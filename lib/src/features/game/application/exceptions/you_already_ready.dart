import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyReady extends DetailedException {
  const YouAlreadyReady()
      : super.conflict(
          code: 'game.youAlreadyReady',
          description: 'You are already set as ready.',
        );
}
