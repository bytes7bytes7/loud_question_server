import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'give_answer_command.dart';

@singleton
class GiveAnswerCommandValidator
    extends BehaviorValidator<GiveAnswerCommand, GameStateResult> {
  GiveAnswerCommandValidator() {
    ruleFor((e) => e.answer, key: 'answer').notEmpty();
  }
}
