import '../../../common/application/exceptions/detailed_exception.dart';

class WrongLobbyPassword extends DetailedException {
  const WrongLobbyPassword()
      : super.failure(
          code: 'lobby.wrongPassword',
          description:
              'Provided password is incorrect for lobby with provided ID.',
        );
}
