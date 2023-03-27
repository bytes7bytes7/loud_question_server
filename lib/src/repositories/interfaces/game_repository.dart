import '../../features/common/domain/domain.dart';

abstract class GameRepository {
  Future<void> init();

  Future<void> dispose();

  Future<GameState?> get({
    required LobbyID lobbyID,
  });

  Future<GameState> updateOrAdd({
    required GameState gameState,
  });
}
