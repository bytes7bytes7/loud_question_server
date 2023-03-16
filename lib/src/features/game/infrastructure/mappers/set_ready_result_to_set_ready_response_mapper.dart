import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class SetReadyResultToSetReadyResponseMapper
    extends OneSourceMapper<SetReadyResult, SetReadyResponse> {
  SetReadyResultToSetReadyResponseMapper(super.input);

  @override
  SetReadyResponse map() {
    return SetReadyResponse(
      gameState: _result.gameState,
    );
  }

  SetReadyResult get _result => source;
}
