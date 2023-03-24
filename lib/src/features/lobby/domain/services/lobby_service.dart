import 'dart:async';
import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/application/providers/date_time_provider.dart';
import '../../../common/domain/domain.dart';
import '../entities/lobby/lobby.dart';

class LobbyServiceEvent {
  const LobbyServiceEvent({
    required this.lobbyID,
    required this.lobby,
    required this.msSinceEpoch,
  });

  final LobbyID lobbyID;
  final Lobby lobby;
  final int msSinceEpoch;
}

@singleton
class LobbyService {
  LobbyService({
    required LobbyRepository lobbyRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _lobbyRepository = lobbyRepository,
        _dateTimeProvider = dateTimeProvider;

  final LobbyRepository _lobbyRepository;
  final DateTimeProvider _dateTimeProvider;
  final _eventController = StreamController<LobbyServiceEvent>.broadcast();
  final _lastEventByID = HashMap<LobbyID, LobbyServiceEvent>();

  Stream<LobbyServiceEvent> get events => _eventController.stream;

  Stream<LobbyServiceEvent> eventsByID(LobbyID lobbyID) =>
      _eventController.stream.where((e) => e.lobbyID == lobbyID);

  @disposeMethod
  void dispose() {
    _eventController.close();
  }

  LobbyServiceEvent? getLastEventByID({required LobbyID lobbyID}) {
    return _lastEventByID[lobbyID];
  }

  Future<Lobby?> get({
    required LobbyID id,
  }) async {
    return _lobbyRepository.get(id: id);
  }

  Future<Lobby> updateOrAdd({
    required Lobby lobby,
  }) async {
    _addEvent(
      LobbyServiceEvent(
        lobbyID: lobby.id,
        lobby: lobby,
        msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      ),
    );

    return _lobbyRepository.updateOrAdd(lobby: lobby);
  }

  void _addEvent(LobbyServiceEvent event) {
    _lastEventByID[event.lobbyID] = event;
    _eventController.add(event);
  }
}
