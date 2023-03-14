import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class VerifyTokenResultToVerifyTokenResponseMapper
    extends OneSourceMapper<VerifyTokenResult, VerifyTokenResponse> {
  VerifyTokenResultToVerifyTokenResponseMapper(super.input);

  @override
  VerifyTokenResponse map() {
    return VerifyTokenResponse(
      info: _result.info,
    );
  }

  VerifyTokenResult get _result => source;
}
