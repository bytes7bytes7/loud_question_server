import '../../features/common/domain/domain.dart';

abstract class GameRepository {
  Future<GameState?> get({
    required LobbyID lobbyID,
  });

  Future<GameState> updateOrAdd({
    required GameState gameState,
  });
}
