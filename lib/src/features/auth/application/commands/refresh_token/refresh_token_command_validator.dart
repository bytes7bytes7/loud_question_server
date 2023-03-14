import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'refresh_token_command.dart';

@singleton
class RefreshTokenCommandValidator
    extends BehaviorValidator<RefreshTokenResult, RefreshTokenCommand> {}
