import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'start_answer_command.dart';

@singleton
class StartAnswerCommandValidator
    extends BehaviorValidator<StartAnswerCommand, GameStateResult> {}
