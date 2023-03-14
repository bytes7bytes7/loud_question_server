import '../../features/common/common.dart';

abstract class PasswordHashRepository {
  Future<String?> getHashByID({required UserID userID});

  Future<void> saveHashByID({
    required UserID userID,
    required String passwordHash,
  });
}
