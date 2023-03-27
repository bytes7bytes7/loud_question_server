import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/common.dart';
import '../interfaces/interfaces.dart';

@Singleton(as: TokenRepository)
class ProdTokenRepository implements TokenRepository {
  late Box<List<String>> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('token');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<void> add({
    required String token,
    required UserID userID,
  }) async {
    final notes = _box.get(userID.str);

    if (notes != null) {
      notes.add(token);
    } else {
      await _box.put(userID.str, <String>[token]);
    }
  }

  @override
  Future<UserID?> getUserIDByToken({required String token}) async {
    for (final key in _box.keys) {
      for (final value in _box.get(key) ?? []) {
        if (value == token) {
          return key;
        }
      }
    }

    return null;
  }

  @override
  Future<void> removeNoteByToken({
    required String token,
  }) async {
    for (final key in _box.keys) {
      final value = _box.get(key) ?? [];
      final iterator = value.iterator..moveNext();

      for (var i = 0; i < value.length; i++) {
        final note = iterator.current;

        if (note == token) {
          value.removeAt(i);
          return;
        }

        iterator.moveNext();
      }

      await _box.put(key, value);
    }

    return;
  }
}
