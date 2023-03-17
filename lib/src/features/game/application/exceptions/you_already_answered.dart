import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyAnswered extends DetailedException {
  const YouAlreadyAnswered()
      : super.conflict(
          code: 'question.youAlreadyAnswered',
          description: 'You have already answered to this question.',
        );
}
