import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'set_ready_command.dart';

@singleton
class SetReadyCommandValidator
    extends BehaviorValidator<SetReadyCommand, GameStateResult> {}
