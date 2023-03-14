import '../../../common/application/exceptions/detailed_exception.dart';

class StolenToken extends DetailedException {
  const StolenToken()
      : super.unauthorized(
          code: 'token.stolen',
          description: 'Is seems the token is stolen.',
        );
}
