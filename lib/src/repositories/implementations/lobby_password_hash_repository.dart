import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/lobby/domain/domain.dart';
import '../interfaces/lobby_password_hash_repository.dart';

@test
@Singleton(as: LobbyPasswordHashRepository)
class TestLobbyPasswordHashRepository implements LobbyPasswordHashRepository {
  final _storage = HashMap<LobbyID, String>();

  @override
  Future<void> setOrUpdate({
    required LobbyID id,
    required String passwordHash,
  }) async {
    _storage[id] = passwordHash;
  }

  @override
  Future<void> remove({
    required LobbyID id,
  }) async {
    _storage.remove(id);
  }
}
