import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_answer_command.dart';

@singleton
class GetAnswerCommandValidator
    extends BehaviorValidator<GetAnswerCommand, GameStateResult> {}
