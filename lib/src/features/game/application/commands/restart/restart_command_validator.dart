import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'restart_command.dart';

@singleton
class RestartCommandValidator
    extends BehaviorValidator<RestartCommand, GameStateResult> {}
