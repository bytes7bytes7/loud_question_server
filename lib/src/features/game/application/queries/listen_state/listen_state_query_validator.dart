import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'listen_state_query.dart';

@singleton
class ListenStateQueryValidator
    extends BehaviorValidator<ListenStateQuery, GameStateResult> {}
