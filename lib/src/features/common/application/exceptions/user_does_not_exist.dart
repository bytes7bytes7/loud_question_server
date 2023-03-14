import 'detailed_exception.dart';

class UserDoesNotExist extends DetailedException {
  const UserDoesNotExist()
      : super.unauthorized(
          code: 'user.doesNotExist',
          description: 'User does not exist.',
        );
}
