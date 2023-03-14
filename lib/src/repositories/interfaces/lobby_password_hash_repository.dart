import '../../features/lobby/domain/domain.dart';

abstract class LobbyPasswordHashRepository {
  Future<void> setOrUpdate({
    required LobbyID id,
    required String passwordHash,
  });

  Future<String?> getPasswordHashByID({
    required LobbyID id,
  });

  Future<void> remove({
    required LobbyID id,
  });
}
