import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetLobbiesResultToGetLobbiesResponseMapper
    extends OneSourceMapper<GetLobbiesResult, GetLobbiesResponse> {
  GetLobbiesResultToGetLobbiesResponseMapper(super.input);

  @override
  GetLobbiesResponse map() {
    return GetLobbiesResponse(
      lobbies: _result.lobbies,
    );
  }

  GetLobbiesResult get _result => source;
}
