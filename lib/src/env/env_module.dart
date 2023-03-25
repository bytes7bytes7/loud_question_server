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

  @singleton
  SongSettings get songSettings => SongSettings(
        path: Env.songPath,
      );

  @singleton
  QuestionSettings get questionSettings => QuestionSettings(
        path: Env.questionPath,
      );
}
