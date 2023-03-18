import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../interfaces/user_game_state_activity_repository.dart';

@test
@Singleton(as: UserGameStateActivityRepository)
class TestUserGameStateActivityRepository
    implements UserGameStateActivityRepository {
  final _storage = HashMap<UserID, int>();

  @override
  Future<int?> lastRequestInMSSinceEpoch({required UserID userID}) async {
    return _storage[userID];
  }

  @override
  Future<void> update({
    required UserID userID,
    required int msSinceEpoch,
  }) async {
    _storage[userID] = msSinceEpoch;
  }
}
