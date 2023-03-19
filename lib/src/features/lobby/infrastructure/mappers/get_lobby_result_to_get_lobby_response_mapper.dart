import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class GetLobbyResultToGetLobbyResponseMapper
    extends OneSourceMapper<GetLobbyResult, GetLobbyResponse> {
  GetLobbyResultToGetLobbyResponseMapper(super.input);

  @override
  GetLobbyResponse map() {
    return GetLobbyResponse(
      lobby: _result.lobby,
    );
  }

  GetLobbyResult get _result => source;
}
