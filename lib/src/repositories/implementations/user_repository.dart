import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/interfaces.dart';

@Singleton(as: UserRepository)
class ProdUserRepository implements UserRepository {
  final _jsonEncoder = JsonEncoder();
  final _jsonDecoder = JsonDecoder();

  late Box<String> _box;

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
    await _box.put(user.id.str, _jsonEncoder.convert(user.toJson()));
  }

  @override
  Future<User?> getByID({required UserID id}) async {
    final string = _box.get(id.str);

    if (string == null) {
      return null;
    }

    final map = _jsonDecoder.convert(string);

    return User.fromJson(map);
  }

  @override
  Future<User?> getByName({required String name}) async {
    for (final e in _box.values) {
      final map = _jsonDecoder.convert(e);
      final user = User.fromJson(map);

      if (user.name == name) {
        return user;
      }
    }

    return null;
  }
}
