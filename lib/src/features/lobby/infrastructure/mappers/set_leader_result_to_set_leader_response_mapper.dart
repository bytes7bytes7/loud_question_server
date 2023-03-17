import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class SetLeaderResultToSetLeaderResponseMapper
    extends OneSourceMapper<SetLeaderResult, SetLeaderResponse> {
  SetLeaderResultToSetLeaderResponseMapper(super.input);

  @override
  SetLeaderResponse map() {
    return SetLeaderResponse(
      lobby: _result.lobby,
    );
  }

  SetLeaderResult get _result => source;
}
