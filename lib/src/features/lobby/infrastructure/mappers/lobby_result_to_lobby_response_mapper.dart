import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class LobbyResultToLobbyResponseMapper
    extends OneSourceMapper<LobbyResult, LobbyResponse> {
  LobbyResultToLobbyResponseMapper(super.input);

  @override
  LobbyResponse map() {
    return LobbyResponse(
      lobby: _result.lobby,
    );
  }

  LobbyResult get _result => source;
}
