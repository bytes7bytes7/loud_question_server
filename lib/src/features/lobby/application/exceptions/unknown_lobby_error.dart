import '../../../common/application/exceptions/detailed_exception.dart';

class UnknownLobbyError extends DetailedException {
  const UnknownLobbyError()
      : super.unexpected(
          code: 'lobby.unknownError',
          description: 'Unknown error occurs during working with the lobby.',
        );
}
