import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RefreshTokenResultToRefreshTokenResponseMapper
    extends OneSourceMapper<RefreshTokenResult, RefreshTokenResponse> {
  RefreshTokenResultToRefreshTokenResponseMapper(super.input);

  @override
  RefreshTokenResponse map() {
    return RefreshTokenResponse(
      accessToken: _result.accessToken,
      refreshToken: _result.refreshToken,
    );
  }

  RefreshTokenResult get _result => source;
}
