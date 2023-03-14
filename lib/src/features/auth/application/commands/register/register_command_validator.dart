import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'register_command.dart';

@singleton
class RegisterCommandValidator
    extends BehaviorValidator<AuthResult, RegisterCommand> {
  RegisterCommandValidator() {
    ruleFor((e) => e.firstName, key: 'firstName').notEmpty();
    ruleFor((e) => e.lastName, key: 'lastName').notEmpty();
    ruleFor((e) => e.email, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
