import 'detailed_exception.dart';

class LobbyDoesNotExist extends DetailedException {
  const LobbyDoesNotExist()
      : super.notFound(
          code: 'common.lobbyNotFound',
          description: 'Lobby with provided ID does not exist.',
        );
}
