import '../../../common/application/exceptions/detailed_exception.dart';

class LobbyDoesNotExist extends DetailedException {
  const LobbyDoesNotExist()
      : super.notFound(
          code: 'lobby.notFound',
          description: 'Lobby with provided ID does not exist.',
        );
}
