import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'join_lobby_command.dart';

@singleton
class JoinLobbyCommandValidator
    extends BehaviorValidator<JoinLobbyResult, JoinLobbyCommand> {
  JoinLobbyCommandValidator() {
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
