import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'listen_lobby_query.dart';

@singleton
class ListenLobbyQueryValidator
    extends BehaviorValidator<ListenLobbyQuery, ListenLobbyResult> {}
