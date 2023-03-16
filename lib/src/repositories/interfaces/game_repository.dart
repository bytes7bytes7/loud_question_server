import '../../features/common/domain/domain.dart';
import '../../features/game/domain/domain.dart';

abstract class GameRepository {
  Future<GameState?> get({
    required LobbyID lobbyID,
  });

  Future<GameState> add({
    required GameState gameState,
  });

  Future<GameState> update({
    required GameState gameState,
  });

  Future<void> remove({
    required LobbyID lobbyID,
  });
}
