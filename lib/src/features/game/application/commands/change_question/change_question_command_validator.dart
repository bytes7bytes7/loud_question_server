import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'change_question_command.dart';

@singleton
class ChangeQuestionCommandValidator
    extends BehaviorValidator<ChangeQuestionCommand, GameStateResult> {}
