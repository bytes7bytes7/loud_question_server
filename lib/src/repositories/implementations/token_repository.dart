import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/auth/domain/domain.dart';
import '../../features/common/common.dart';
import '../interfaces/interfaces.dart';

class _Note {
  const _Note({
    required this.tokenPair,
    required this.session,
  });

  final TokenPair tokenPair;
  final DeviceSession session;
}

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _storage = HashMap<UserID, List<_Note>>();

  @override
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required DeviceInfo deviceInfo,
    required String ip,
    required DateTime createdAt,
  }) async {
    final notes = _storage[userID];
    final newNote = _Note(
      tokenPair: tokenPair,
      session: DeviceSession(
        id: DeviceSessionID.generate(),
        deviceInfo: deviceInfo,
        ip: ip,
        createdAt: createdAt,
      ),
    );

    if (notes != null) {
      var updated = false;

      final iterator = notes.iterator..moveNext();
      for (var i = 0; i < notes.length; i++) {
        final note = iterator.current;

        if (note.session.deviceInfo == deviceInfo) {
          notes[i] = newNote;
          updated = true;
          break;
        }

        iterator.moveNext();
      }

      if (!updated) {
        notes.add(newNote);
      }
    } else {
      _storage[userID] = <_Note>[newNote];
    }
  }

  @override
  Future<UserID?> getUserIDByAccessToken({required String accessToken}) async {
    for (final notes in _storage.entries) {
      for (final note in notes.value) {
        if (note.tokenPair.access == accessToken) {
          return notes.key;
        }
      }
    }

    return null;
  }

  @override
  Future<UserID?> getUserIDByRefreshToken({
    required String refreshToken,
  }) async {
    for (final notes in _storage.entries) {
      for (final note in notes.value) {
        if (note.tokenPair.refresh == refreshToken) {
          return notes.key;
        }
      }
    }

    return null;
  }

  @override
  Future<DeviceInfo?> getDeviceInfoByAccessToken({
    required String accessToken,
  }) async {
    for (final notes in _storage.entries) {
      for (final note in notes.value) {
        if (note.tokenPair.access == accessToken) {
          return note.session.deviceInfo;
        }
      }
    }

    return null;
  }

  @override
  Future<DeviceInfo?> getDeviceInfoByRefreshToken({
    required String refreshToken,
  }) async {
    for (final notes in _storage.entries) {
      for (final note in notes.value) {
        if (note.tokenPair.refresh == refreshToken) {
          return note.session.deviceInfo;
        }
      }
    }

    return null;
  }

  @override
  Future<List<DeviceSession>> getSessionsByUserID({
    required UserID userID,
  }) async {
    return _storage[userID]?.map((e) => e.session).toList() ??
        <DeviceSession>[];
  }

  @override
  Future<DeviceSession?> getSessionByUserIDAccessToken({
    required UserID userID,
    required String accessToken,
  }) async {
    final notes = _storage[userID];

    if (notes == null) {
      return null;
    }

    for (final note in notes) {
      if (note.tokenPair.access == accessToken) {
        return note.session;
      }
    }

    return null;
  }

  @override
  Future<void> removeNoteByAccessToken({
    required String accessToken,
  }) async {
    for (final notes in _storage.entries) {
      final iterator = notes.value.iterator..moveNext();

      for (var i = 0; i < notes.value.length; i++) {
        final note = iterator.current;

        if (note.tokenPair.access == accessToken) {
          notes.value.removeAt(i);
          return;
        }

        iterator.moveNext();
      }
    }

    return;
  }

  @override
  Future<void> removeNoteByRefreshToken({
    required String refreshToken,
  }) async {
    for (final notes in _storage.entries) {
      final iterator = notes.value.iterator..moveNext();

      for (var i = 0; i < notes.value.length; i++) {
        final note = iterator.current;

        if (note.tokenPair.refresh == refreshToken) {
          notes.value.removeAt(i);
          return;
        }

        iterator.moveNext();
      }
    }

    return;
  }

  @override
  Future<void> removeNoteByUserIDSessionID({
    required UserID userID,
    required DeviceSessionID sessionID,
  }) async {
    final notes = _storage[userID];

    if (notes != null) {
      final iterator = notes.iterator..moveNext();

      for (var i = 0; i < notes.length; i++) {
        final note = iterator.current;

        if (note.session.id == sessionID) {
          notes.removeAt(i);
          return;
        }

        iterator.moveNext();
      }
    }

    return;
  }
}
