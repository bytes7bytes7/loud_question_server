import 'dart:async';

import 'package:load_question_server/load_question_server.dart';

final _getIt = GetIt.instance;

extension RouterAuthorizationX on Router {
  FutureOr<Response> Function(Request) addAuthorization() {
    return Pipeline()
        .addMiddleware(
          authorize(
            jwtSettings: _getIt.get<JwtSettings>(),
            jwtTokenService: _getIt.get<JwtTokenService>(),
            endUserRepository: _getIt.get<EndUserRepository>(),
            tokenRepository: _getIt.get<TokenRepository>(),
          ),
        )
        .addHandler(this);
  }
}
