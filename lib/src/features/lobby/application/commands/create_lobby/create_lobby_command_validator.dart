import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';

import '../../common/common.dart';
import 'create_lobby_command.dart';

@singleton
class CreateLobbyCommandValidator
    extends BehaviorValidator<CreateLobbyCommand, LobbyResult> {
  CreateLobbyCommandValidator() {
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
