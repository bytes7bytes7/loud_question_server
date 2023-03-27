import 'package:injectable/injectable.dart';

import '../utils/utils.dart';
import 'env.dart';

@module
abstract class EnvModule {
  @singleton
  JwtSettings get jwtSettings => JwtSettings(
        secret: Env.jwtSecret,
        issuer: Env.jwtIssuer,
        tokenExpiresInMins: int.parse(Env.jwtTokenExpiresInMins),
        audience: Env.jwtAudience,
      );
}
