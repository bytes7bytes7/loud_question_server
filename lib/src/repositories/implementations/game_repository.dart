import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/game_repository.dart';

@test
@Singleton(as: GameRepository)
class TestGameRepository implements GameRepository {
  final _storage = HashMap<LobbyID, GameState>();

  @override
  Future<GameState?> get({
    required LobbyID lobbyID,
  }) async {
    return _storage[lobbyID];
  }

  @override
  Future<GameState> updateOrAdd({
    required GameState gameState,
  }) async {
    _storage[gameState.lobbyID] = gameState;

    return gameState;
  }
}
