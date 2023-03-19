import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_user_query.dart';

@singleton
class GetUserQueryValidator
    extends BehaviorValidator<GetUserQuery, GetUserResult> {}
