import '../../features/common/domain/domain.dart';

abstract class LobbyPasswordHashRepository {
  Future<void> init();

  Future<void> dispose();

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
