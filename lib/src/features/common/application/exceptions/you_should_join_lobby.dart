import 'detailed_exception.dart';

class YouShouldJoinLobby extends DetailedException {
  const YouShouldJoinLobby()
      : super.conflict(
          code: 'lobby.youShouldJoinLobby',
          description: 'You should join the lobby first.',
        );
}
