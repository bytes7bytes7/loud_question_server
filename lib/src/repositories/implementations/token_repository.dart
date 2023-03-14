import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/common.dart';
import '../interfaces/interfaces.dart';

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _storage = HashMap<UserID, List<String>>();

  @override
  Future<void> add({
    required String token,
    required UserID userID,
  }) async {
    final notes = _storage[userID];

    if (notes != null) {
      notes.add(token);
    } else {
      _storage[userID] = <String>[token];
    }
  }

  @override
  Future<UserID?> getUserIDByToken({required String token}) async {
    for (final notes in _storage.entries) {
      for (final note in notes.value) {
        if (note == token) {
          return notes.key;
        }
      }
    }

    return null;
  }

  @override
  Future<void> removeNoteByToken({
    required String token,
  }) async {
    for (final notes in _storage.entries) {
      final iterator = notes.value.iterator..moveNext();

      for (var i = 0; i < notes.value.length; i++) {
        final note = iterator.current;

        if (note == token) {
          notes.value.removeAt(i);
          return;
        }

        iterator.moveNext();
      }
    }

    return;
  }
}
