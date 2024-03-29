import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'log_in_query.dart';

@singleton
class LogInQueryValidator extends BehaviorValidator<LogInQuery, AuthResult> {
  LogInQueryValidator() {
    ruleFor((e) => e.name, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
