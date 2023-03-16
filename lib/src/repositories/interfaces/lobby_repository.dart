import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';

abstract class LobbyRepository {
  Future<List<Lobby>> getAllByUserID({
    required UserID userID,
  });

  Future<Lobby> create({
    required UserID creatorID,
  });

  Future<Lobby?> getByID({
    required LobbyID id,
  });

  Future<void> remove({
    required LobbyID id,
  });

  Future<Lobby?> update({
    required Lobby lobby,
  });
}
