import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/interfaces.dart';

@test
@Singleton(as: UserRepository)
class TestUserRepository implements UserRepository {
  final _storage = <UserID, User>{};

  @override
  Future<void> addOrUpdate({required User user}) async {
    _storage[user.id] = user;
  }

  @override
  Future<User?> getByEmail({required String email}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.name == email)
        ?.value;
  }

  @override
  Future<User?> getByID({required UserID id}) async {
    return _storage[id];
  }

  @override
  Future<User?> getByName({required String name}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.name == name)
        ?.value;
  }
}
