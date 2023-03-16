import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class SetNotReadyResultToSetNotReadyResponse
    extends OneSourceMapper<SetNotReadyResult, SetNotReadyResponse> {
  SetNotReadyResultToSetNotReadyResponse(super.input);

  @override
  SetNotReadyResponse map() {
    return SetNotReadyResponse(
      gameState: _result.gameState,
    );
  }

  SetNotReadyResult get _result => source;
}
