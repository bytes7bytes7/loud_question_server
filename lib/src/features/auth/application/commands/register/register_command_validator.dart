import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'register_command.dart';

@singleton
class RegisterCommandValidator
    extends BehaviorValidator<RegisterCommand, AuthResult> {
  RegisterCommandValidator() {
    ruleFor((e) => e.name, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
