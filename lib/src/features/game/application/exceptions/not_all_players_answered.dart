import '../../../common/application/exceptions/detailed_exception.dart';

class NotAllPlayersAnswered extends DetailedException {
  const NotAllPlayersAnswered()
      : super.conflict(
          code: 'game.notAllPlayersAnswered',
          description: 'Not all players give an answer.',
        );
}
