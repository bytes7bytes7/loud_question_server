import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../utils/jwt_settings.dart';
import '../../../common/common.dart';
import '../../application/application.dart';

@Singleton(as: JwtTokenService)
class ProdJwtTokenService implements JwtTokenService {
  const ProdJwtTokenService(
    this.jwtSettings,
  );

  final JwtSettings jwtSettings;

  @override
  String generate(User user) {
    final tokenJwt = JWT(
      {
        'name': user.name,
      },
      subject: user.id.str,
      jwtId: Uuid().v4(),
      issuer: jwtSettings.issuer,
      audience: Audience.one(jwtSettings.audience),
    );

    final token = tokenJwt.sign(
      SecretKey(jwtSettings.secret),
      expiresIn: Duration(minutes: jwtSettings.accessExpiresInMins),
    );

    return token;
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
