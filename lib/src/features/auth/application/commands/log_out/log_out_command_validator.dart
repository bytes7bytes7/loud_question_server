import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'log_out_command.dart';

@singleton
class LogOutCommandValidator
    extends BehaviorValidator<LogOutCommand, LogOutResult> {}
