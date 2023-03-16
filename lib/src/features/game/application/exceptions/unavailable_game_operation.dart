import '../../../common/application/exceptions/detailed_exception.dart';

class UnavailableGameOperation extends DetailedException {
  const UnavailableGameOperation()
      : super.conflict(
          code: 'game.unavailableOperation',
          description: 'This operation is currently unavailable.',
        );
}
