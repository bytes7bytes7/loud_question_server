import '../../../common/application/exceptions/detailed_exception.dart';

class UserAlreadyLeader extends DetailedException {
  const UserAlreadyLeader()
      : super.conflict(
          code: 'lobby.userAlreadyLeader',
          description: 'This user is already a leader.',
        );
}
