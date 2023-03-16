import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class StartRoundResultToStartRoundResponseMapper
    extends OneSourceMapper<StartRoundResult, StartRoundResponse> {
  StartRoundResultToStartRoundResponseMapper(super.input);

  @override
  StartRoundResponse map() {
    return StartRoundResponse(
      gameState: _result.gameState,
    );
  }

  StartRoundResult get _result => source;
}
