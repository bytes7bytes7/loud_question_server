import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class GameStateResultToGameStateResponse
    extends OneSourceMapper<GameStateResult, GameStateResponse> {
  GameStateResultToGameStateResponse(super.input);

  @override
  GameStateResponse map() {
    return GameStateResponse(
      gameState: _result.gameState,
    );
  }

  GameStateResult get _result => source;
}
