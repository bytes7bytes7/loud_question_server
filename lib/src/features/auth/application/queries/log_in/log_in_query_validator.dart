import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'log_in_query.dart';

@singleton
class LogInQueryValidator extends BehaviorValidator<AuthResult, LogInQuery> {
  LogInQueryValidator() {
    ruleFor((e) => e.email, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
