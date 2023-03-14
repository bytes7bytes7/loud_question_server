import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../utils/jwt_settings.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

@Singleton(as: JwtTokenService)
class ProdJwtTokenService implements JwtTokenService {
  const ProdJwtTokenService(
    this.jwtSettings,
  );

  final JwtSettings jwtSettings;

  @override
  TokenPair generate(EndUser user) {
    final accessTokenJwt = JWT(
      {
        'firstName': user.firstName,
        'lastName': user.lastName,
        'email': user.email,
      },
      subject: user.id.str,
      jwtId: Uuid().v4(),
      issuer: jwtSettings.issuer,
      audience: Audience.one(jwtSettings.audience),
    );

    final accessToken = accessTokenJwt.sign(
      SecretKey(jwtSettings.secret),
      expiresIn: Duration(minutes: jwtSettings.accessExpiresInMins),
    );

    final refreshTokenJwt = JWT(
      {
        'firstName': user.firstName,
        'lastName': user.lastName,
        'email': user.email,
      },
      subject: user.id.str,
      jwtId: Uuid().v4(),
      issuer: jwtSettings.issuer,
      audience: Audience.one(jwtSettings.audience),
    );

    final refreshToken = refreshTokenJwt.sign(
      SecretKey(jwtSettings.secret),
      expiresIn: Duration(minutes: jwtSettings.refreshExpiresInMins),
    );

    return TokenPair(
      access: accessToken,
      refresh: refreshToken,
    );
  }

  @override
  JwtVerificationStatus verify(String token) {
    try {
      JWT.verify(token, SecretKey(jwtSettings.secret));
      return JwtVerificationStatus.verified;
      // ignore: avoid_catching_errors
    } on JWTExpiredError {
      return JwtVerificationStatus.expired;
    } catch (_) {
      return JwtVerificationStatus.invalid;
    }
  }
}
