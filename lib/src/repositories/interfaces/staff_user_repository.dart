import '../../features/common/domain/domain.dart';

abstract class StaffUserRepository {
  Future<void> add({required StaffUser user});

  Future<StaffUser?> getByName({required String name});

  Future<StaffUser?> getByID({required UserID id});

  Future<StaffUser?> getByNick({required String nick});
}
