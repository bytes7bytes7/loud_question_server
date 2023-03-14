import '../../../common/application/exceptions/detailed_exception.dart';

class InvalidToken extends DetailedException {
  const InvalidToken()
      : super.unauthorized(
          code: 'token.invalid',
          description: 'Invalid token.',
        );
}
