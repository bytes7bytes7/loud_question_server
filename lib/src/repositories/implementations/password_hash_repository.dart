import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../interfaces/interfaces.dart';

@Singleton(as: PasswordHashRepository)
class ProdPasswordHashRepository implements PasswordHashRepository {
  late Box<String> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('password_hash');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<String?> getHashByID({required UserID userID}) async {
    return _box.get(userID.str);
  }

  @override
  Future<void> saveHashByID({
    required UserID userID,
    required String passwordHash,
  }) async {
    return _box.put(userID.str, passwordHash);
  }
}
