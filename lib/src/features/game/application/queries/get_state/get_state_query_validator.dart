import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_state_query.dart';

@singleton
class GetStateQueryValidator
    extends BehaviorValidator<GetStateQuery, GameStateResult> {}
