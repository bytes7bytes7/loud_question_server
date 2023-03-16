import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_lobbies_query.dart';

@singleton
class GetLobbiesQueryValidator
    extends BehaviorValidator<GetLobbiesQuery, GetLobbiesResult> {}
