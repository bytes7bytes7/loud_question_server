import '../../../common/application/exceptions/detailed_exception.dart';

class NotAllPlayersReady extends DetailedException {
  const NotAllPlayersReady()
      : super.conflict(
          code: 'game.notAllPlayersReady',
          description: 'Not all players are ready.',
        );
}
