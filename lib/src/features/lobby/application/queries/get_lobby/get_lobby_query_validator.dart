import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_lobby_query.dart';

@singleton
class GetLobbyQueryValidator
    extends BehaviorValidator<GetLobbyQuery, GetLobbyResult> {}
