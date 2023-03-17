import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'set_not_ready_command.dart';

@singleton
class SetNotReadyCommandValidator
    extends BehaviorValidator<SetNotReadyCommand, GameStateResult> {}
