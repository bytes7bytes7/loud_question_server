import 'dart:async';

import 'package:loud_question_server/loud_question_server.dart';

final _getIt = GetIt.instance;

extension RouterAuthorizationX on Router {
  FutureOr<Response> Function(Request) addAuthorization() {
    return Pipeline()
        .addMiddleware(
          authorize(
            jwtSettings: _getIt.get<JwtSettings>(),
            jwtTokenService: _getIt.get<JwtTokenService>(),
            userRepository: _getIt.get<UserRepository>(),
            tokenRepository: _getIt.get<TokenRepository>(),
          ),
        )
        .addHandler(this);
  }
}
