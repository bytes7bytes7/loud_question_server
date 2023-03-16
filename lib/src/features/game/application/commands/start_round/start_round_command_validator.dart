import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'start_round_command.dart';

@singleton
class StartRoundCommandValidator
    extends BehaviorValidator<StartRoundCommand, StartRoundResult> {}
