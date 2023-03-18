import '../../features/common/domain/domain.dart';

abstract class UserGameStateActivityRepository {
  Future<int?> lastRequestInMSSinceEpoch({
    required UserID userID,
  });

  Future<void> update({
    required UserID userID,
    required int msSinceEpoch,
  });
}
