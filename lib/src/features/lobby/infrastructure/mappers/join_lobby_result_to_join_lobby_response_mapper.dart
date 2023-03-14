import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class JoinLobbyResultToJoinLobbyResponseMapper
    extends OneSourceMapper<JoinLobbyResult, JoinLobbyResponse> {
  JoinLobbyResultToJoinLobbyResponseMapper(super.input);

  @override
  JoinLobbyResponse map() {
    return JoinLobbyResponse(
      lobby: _result.lobby,
    );
  }

  JoinLobbyResult get _result => source;
}
