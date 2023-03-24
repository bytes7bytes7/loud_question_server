import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class GetSongResultToGetSongResponse
    extends OneSourceMapper<GetSongResult, GetSongResponse> {
  GetSongResultToGetSongResponse(super.input);

  @override
  GetSongResponse map() {
    return GetSongResponse(
      bytes: _result.bytes,
    );
  }

  GetSongResult get _result => source;
}
