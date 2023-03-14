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

  final _userIDToLobbyID = HashMap<UserID, List<LobbyID>>();
  final _lobbyIDToLobby = HashMap<LobbyID, Lobby>();
  final _lobbyIDToUserID = HashMap<LobbyID, UserID>();

  @override
  Future<Lobby> create({
    required UserID creatorID,
  }) async {
    late LobbyID lobbyID;
    do {
      lobbyID = LobbyID.generate();
    } while (_lobbyIDToLobby.containsKey(lobbyID));

    final lobby = Lobby(
      id: lobbyID,
      creatorID: creatorID,
      createdAtInMSSinceEpoch: _dateTimeRepository.now().millisecondsSinceEpoch,
      guests: [],
    );

    _lobbyIDToLobby[lobbyID] = lobby;
    _lobbyIDToUserID[lobbyID] = creatorID;

    final lobbies = _userIDToLobbyID[creatorID];

    if (lobbies != null) {
      lobbies.add(lobbyID);
    } else {
      _userIDToLobbyID[creatorID] = <LobbyID>[lobbyID];
    }

    return lobby;
  }

  @override
  Future<Lobby?> getByID({
    required LobbyID id,
  }) async {
    return _lobbyIDToLobby[id];
  }

  @override
  Future<void> remove({
    required LobbyID id,
  }) async {
    final userID = _lobbyIDToUserID.remove(id);

    if (userID != null) {
      _lobbyIDToLobby.remove(id);

      _userIDToLobbyID[userID] =
          List<LobbyID>.from(_userIDToLobbyID[userID] ?? [])..remove(id);
    }
  }

  @override
  Future<Lobby?> update({
    required Lobby lobby,
  }) async {
    final userID = _lobbyIDToUserID[lobby.id];

    if (userID != null) {
      final lobbyIDs = _userIDToLobbyID[userID] ?? [];

      final hasLobby = lobbyIDs.contains(lobby.id);

      if (hasLobby) {
        _lobbyIDToLobby[lobby.id] = lobby;
        return lobby;
      }
    }

    return null;
  }
}
