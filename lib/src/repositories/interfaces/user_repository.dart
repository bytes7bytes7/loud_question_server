import '../../features/common/domain/domain.dart';

abstract class UserRepository {
  Future<void> addOrUpdate({required User user});

  Future<User?> getByEmail({required String email});

  Future<User?> getByID({required UserID id});

  Future<User?> getByName({required String name});
}
