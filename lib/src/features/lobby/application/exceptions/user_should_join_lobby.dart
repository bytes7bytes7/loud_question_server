import '../../../common/application/exceptions/detailed_exception.dart';

class UserShouldJoinLobby extends DetailedException {
  const UserShouldJoinLobby()
      : super.conflict(
          code: 'lobby.userShouldJoinLobby',
          description: 'User should join the lobby to be a leader.',
        );
}
