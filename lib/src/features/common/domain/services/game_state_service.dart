import 'dart:async';
import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../application/providers/date_time_provider.dart';
import '../value_objects/value_objects.dart';

class GameStateServiceEvent {
  const GameStateServiceEvent({
    required this.lobbyID,
    required this.gameState,
    required this.msSinceEpoch,
  });

  final LobbyID lobbyID;
  final GameState gameState;
  final int msSinceEpoch;
}

@singleton
class GameStateService {
  GameStateService({
    required GameRepository gameRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _gameRepository = gameRepository,
        _dateTimeProvider = dateTimeProvider;

  final GameRepository _gameRepository;
  final DateTimeProvider _dateTimeProvider;
  final _eventController = StreamController<GameStateServiceEvent>.broadcast();
  final _lastEventByID = HashMap<LobbyID, GameStateServiceEvent>();

  Stream<GameStateServiceEvent> get events => _eventController.stream;

  Stream<GameStateServiceEvent> eventsByID(LobbyID lobbyID) =>
      _eventController.stream.where((e) => e.lobbyID == lobbyID);

  @disposeMethod
  void dispose() {
    _eventController.close();
  }

  GameStateServiceEvent? getLastEventByID({required LobbyID lobbyID}) {
    return _lastEventByID[lobbyID];
  }

  Future<GameState?> get({
    required LobbyID lobbyID,
  }) async {
    return _gameRepository.get(lobbyID: lobbyID);
  }

  Future<GameState> updateOrAdd({
    required GameState gameState,
  }) async {
    _addEvent(
      GameStateServiceEvent(
        lobbyID: gameState.lobbyID,
        gameState: gameState,
        msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      ),
    );

    return _gameRepository.updateOrAdd(gameState: gameState);
  }

  void _addEvent(GameStateServiceEvent event) {
    _lastEventByID[event.lobbyID] = event;
    _eventController.add(event);
  }
}
