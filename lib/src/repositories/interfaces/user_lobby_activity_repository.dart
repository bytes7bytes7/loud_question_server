import '../../features/common/domain/domain.dart';

abstract class UserLobbyActivityRepository {
  Future<void> init();

  Future<void> dispose();

  Future<int?> lastRequestInMSSinceEpoch({
    required UserID userID,
  });

  Future<void> update({
    required UserID userID,
    required int msSinceEpoch,
  });
}
