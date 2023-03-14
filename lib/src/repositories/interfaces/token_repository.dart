import '../../features/common/common.dart';

abstract class TokenRepository {
  Future<void> add({
    required String token,
    required UserID userID,
  });

  Future<UserID?> getUserIDByToken({required String token});

  Future<void> removeNoteByToken({required String token});
}
