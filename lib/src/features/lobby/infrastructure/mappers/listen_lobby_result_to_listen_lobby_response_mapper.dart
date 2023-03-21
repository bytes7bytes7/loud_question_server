import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class ListenLobbyResultToListenLobbyResponseMapper
    extends OneSourceMapper<ListenLobbyResult, ListenLobbyResponse> {
  ListenLobbyResultToListenLobbyResponseMapper(super.input);

  @override
  ListenLobbyResponse map() {
    return ListenLobbyResponse(
      lobby: _result.lobby,
    );
  }

  ListenLobbyResult get _result => source;
}
