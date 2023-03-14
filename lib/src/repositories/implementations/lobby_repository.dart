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

  @override
  Future<Lobby> createLobby({
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

    final lobbies = _userIDToLobbyID[creatorID];

    if (lobbies != null) {
      lobbies.add(lobbyID);
    } else {
      _userIDToLobbyID[creatorID] = <LobbyID>[lobbyID];
    }

    return lobby;
  }

  @override
  Future<void> removeLobby({
    required UserID creatorID,
    required LobbyID id,
  }) async {
    final lobbyIDs = _userIDToLobbyID[creatorID];

    if (lobbyIDs != null) {
      lobbyIDs.removeWhere((e) => e == id);
    }
  }

  @override
  Future<Lobby> addGuest({
    required LobbyID lobbyID,
    required UserID guestID,
  }) async {
    final lobby = _lobbyIDToLobby[lobbyID];

    if (lobby != null) {
      final guests = List<UserID>.from(lobby.guests)..add(guestID);
      final newLobby = lobby.copyWith(
        guests: guests,
      );

      _lobbyIDToLobby[lobbyID] = newLobby;

      return newLobby;
    }

    throw Exception('No lobby found');
  }

  @override
  Future<Lobby> removeGuest({
    required LobbyID lobbyID,
    required UserID guestID,
  }) async {
    final lobby = _lobbyIDToLobby[lobbyID];

    if (lobby != null) {
      final guests = List<UserID>.from(lobby.guests)..remove(guestID);
      final newLobby = lobby.copyWith(
        guests: guests,
      );

      _lobbyIDToLobby[lobbyID] = newLobby;

      return newLobby;
    }

    throw Exception('No lobby found');
  }
}
