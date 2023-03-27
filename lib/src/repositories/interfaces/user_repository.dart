import '../../features/common/domain/domain.dart';

abstract class UserRepository {
  Future<void> init();

  Future<void> dispose();

  Future<void> addOrUpdate({required User user});

  Future<User?> getByID({required UserID id});

  Future<User?> getByName({required String name});
}
