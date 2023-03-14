import 'package:injectable/injectable.dart';

import '../utils/jwt_settings.dart';
import 'env.dart';

@module
abstract class EnvModule {
  @singleton
  JwtSettings get jwtSettings => JwtSettings(
        secret: Env.jwtSecret,
        issuer: Env.jwtIssuer,
        accessExpiresInMins: int.parse(Env.jwtAccessExpiresInMins),
        refreshExpiresInMins: int.parse(Env.jwtRefreshExpiresInMins),
        audience: Env.jwtAudience,
      );
}
