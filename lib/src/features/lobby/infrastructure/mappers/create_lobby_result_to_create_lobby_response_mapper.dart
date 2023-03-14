import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class CreateLobbyResultToCreateLobbyResponseMapper
    extends OneSourceMapper<CreateLobbyResult, CreateLobbyResponse> {
  CreateLobbyResultToCreateLobbyResponseMapper(super.input);

  @override
  CreateLobbyResponse map() {
    return CreateLobbyResponse(
      lobby: _result.lobby,
    );
  }

  CreateLobbyResult get _result => source;
}
