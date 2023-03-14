import 'detailed_exception.dart';

class InvalidBodyException extends DetailedException {
  const InvalidBodyException()
      : super.failure(
          code: 'Request.InvalidBody',
          description: 'Body of request has wrong format.',
        );
}
