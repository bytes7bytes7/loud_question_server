import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../../utils/typedef.dart';
import '../interfaces/interfaces.dart';

@Singleton(as: UserRepository)
class ProdUserRepository implements UserRepository {
  late Box<JsonMap> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('user');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<void> addOrUpdate({required User user}) async {
    await _box.put(user.id.str, user.toJson());
  }

  @override
  Future<User?> getByID({required UserID id}) async {
    final map = _box.get(id.str);

    if (map == null) {
      return null;
    }

    return User.fromJson(map);
  }

  @override
  Future<User?> getByName({required String name}) async {
    for (final e in _box.values) {
      final user = User.fromJson(e);

      if (user.name == name) {
        return user;
      }
    }

    return null;
  }
}
