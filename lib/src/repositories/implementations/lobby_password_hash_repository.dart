import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/lobby_password_hash_repository.dart';

@Singleton(as: LobbyPasswordHashRepository)
class ProdLobbyPasswordHashRepository implements LobbyPasswordHashRepository {
  late Box<String> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('lobby_password_hash');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<void> setOrUpdate({
    required LobbyID id,
    required String passwordHash,
  }) async {
    await _box.put(id.str, passwordHash);
  }

  @override
  Future<String?> getPasswordHashByID({
    required LobbyID id,
  }) async {
    return _box.get(id.str);
  }

  @override
  Future<void> remove({
    required LobbyID id,
  }) async {
    await _box.delete(id.str);
  }
}
