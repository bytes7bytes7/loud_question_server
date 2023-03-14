import '../../../common/application/exceptions/detailed_exception.dart';

class InvalidCredentials extends DetailedException {
  const InvalidCredentials()
      : super.unauthorized(
          code: 'auth.invalidCredentials',
          description: 'Invalid credentials.',
        );
}
