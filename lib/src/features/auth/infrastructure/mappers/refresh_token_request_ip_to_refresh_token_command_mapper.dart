import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RefreshTokenRequestIPToRefreshTokenCommandMapper
    extends TwoSourcesMapper<RefreshTokenRequest, String, RefreshTokenCommand> {
  RefreshTokenRequestIPToRefreshTokenCommandMapper(super.input);

  @override
  RefreshTokenCommand map() {
    return RefreshTokenCommand(
      refreshToken: _request.refreshToken,
      deviceInfo: _request.deviceInfo,
      ip: _ip,
    );
  }

  RefreshTokenRequest get _request => source1;

  String get _ip => source2;
}
