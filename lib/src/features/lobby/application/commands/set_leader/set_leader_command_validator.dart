import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'set_leader_command.dart';

@singleton
class SetLeaderCommandValidator
    extends BehaviorValidator<SetLeaderCommand, SetLeaderResult> {}
