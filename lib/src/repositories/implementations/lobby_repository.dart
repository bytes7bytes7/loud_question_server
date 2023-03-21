import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';
import '../interfaces/date_time_repository.dart';
import '../interfaces/lobby_repository.dart';

@test
@Singleton(as: LobbyRepository)
class TestLobbyRepository implements LobbyRepository {
  TestLobbyRepository({
    required DateTimeRepository dateTimeRepository,
  }) : _dateTimeRepository = dateTimeRepository;

  final DateTimeRepository _dateTimeRepository;

  final _userIDToLobbyIDs = HashMap<UserID, List<LobbyID>>();
  final _lobbyIDToUserIDs = HashMap<LobbyID, List<UserID>>();
  final _lobbyIDToLobby = HashMap<LobbyID, Lobby>();

  @override
  Future<List<Lobby>> getAllByUserID({
    required UserID userID,
  }) async {
    final lobbyIDs = _userIDToLobbyIDs[userID] ?? [];

    final lobbies = <Lobby>[];
    for (final id in lobbyIDs) {
      final lobby = _lobbyIDToLobby[id];

      if (lobby != null) {
        lobbies.add(lobby);
      }
    }

    return lobbies;
  }

  @override
  Future<Lobby> create({
    required UserID creatorID,
  }) async {
    late LobbyID lobbyID;
    do {
      lobbyID = LobbyID.generate();
    } while (_lobbyIDToUserIDs.containsKey(lobbyID));

    final lobby = Lobby(
      id: lobbyID,
      creatorID: creatorID,
      createdAtInMSSinceEpoch: _dateTimeRepository.now().millisecondsSinceEpoch,
      guestIDs: [],
    );

    final lobbyIDs = (_userIDToLobbyIDs[creatorID] ?? [])..add(lobby.id);
    _userIDToLobbyIDs[creatorID] = lobbyIDs;

    _lobbyIDToUserIDs[lobbyID] = [creatorID];
    _lobbyIDToLobby[lobby.id] = lobby;

    return lobby;
  }

  @override
  Future<Lobby?> get({
    required LobbyID id,
  }) async {
    return _lobbyIDToLobby[id];
  }

  @override
  Future<void> remove({
    required LobbyID id,
  }) async {
    final userIDs = _lobbyIDToUserIDs.remove(id) ?? [];

    for (final id in userIDs) {
      _userIDToLobbyIDs.remove(id);
    }

    _lobbyIDToLobby.remove(id);
  }

  @override
  Future<Lobby> updateOrAdd({
    required Lobby lobby,
  }) async {
    _lobbyIDToLobby[lobby.id] = lobby;

    final lobbyIDs = _userIDToLobbyIDs[lobby.creatorID] ?? [];
    if (!lobbyIDs.contains(lobby.id)) {
      lobbyIDs.add(lobby.id);
    }

    _userIDToLobbyIDs[lobby.creatorID] = lobbyIDs;

    for (final id in lobby.guestIDs) {
      final lobbyIDs = _userIDToLobbyIDs[id] ?? [];
      if (!lobbyIDs.contains(lobby.id)) {
        lobbyIDs.add(lobby.id);
      }

      _userIDToLobbyIDs[id] = lobbyIDs;
    }

    final userIDs = [lobby.creatorID, ...lobby.guestIDs];
    _lobbyIDToUserIDs[lobby.id] = userIDs;

    return lobby;
  }
}
