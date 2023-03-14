import 'detailed_exception.dart';

class NoTokenProvided extends DetailedException {
  const NoTokenProvided()
      : super.unauthorized(
          code: 'token.absent',
          description: 'No authorization token provided.',
        );
}
