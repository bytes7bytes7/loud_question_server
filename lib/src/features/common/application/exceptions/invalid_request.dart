import 'detailed_exception.dart';

class InvalidRequest extends DetailedException {
  const InvalidRequest()
      : super.failure(
          code: 'request.invalid',
          description: 'The request is invalid.',
        );
}
