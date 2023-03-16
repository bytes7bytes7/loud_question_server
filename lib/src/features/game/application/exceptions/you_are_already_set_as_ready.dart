import '../../../common/application/exceptions/detailed_exception.dart';

class YouAreAlreadySetAsReady extends DetailedException {
  const YouAreAlreadySetAsReady()
      : super.conflict(
          code: 'game.youAreAlreadySetAsReady',
          description: 'You are already set as ready.',
        );
}
