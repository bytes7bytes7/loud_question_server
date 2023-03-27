import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../interfaces/user_game_state_activity_repository.dart';

@Singleton(as: UserGameStateActivityRepository)
class ProdUserGameStateActivityRepository
    implements UserGameStateActivityRepository {
  late Box<int> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('user_game_state_activity');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<int?> lastRequestInMSSinceEpoch({required UserID userID}) async {
    return _box.get(userID.str);
  }

  @override
  Future<void> update({
    required UserID userID,
    required int msSinceEpoch,
  }) async {
    await _box.put(userID.str, msSinceEpoch);
  }
}
