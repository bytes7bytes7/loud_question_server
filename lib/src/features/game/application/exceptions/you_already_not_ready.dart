import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyNotReady extends DetailedException {
  const YouAlreadyNotReady()
      : super.conflict(
          code: 'game.youAlreadyNotReady',
          description: 'You are already set as not ready.',
        );
}
