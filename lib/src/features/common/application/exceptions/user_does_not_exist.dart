import 'detailed_exception.dart';

class UserDoesNotExist extends DetailedException {
  const UserDoesNotExist()
      : super.notFound(
          code: 'user.doesNotExist',
          description: 'User does not exist.',
        );
}
