import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/presentation.dart';

class AuthResultToAuthResponseMapper
    extends OneSourceMapper<AuthResult, AuthResponse> {
  AuthResultToAuthResponseMapper(super.input);

  @override
  AuthResponse map() {
    return AuthResponse(
      id: _authResult.user.id,
      firstName: _authResult.user.firstName,
      lastName: _authResult.user.lastName,
      email: _authResult.user.email,
      accessToken: _authResult.accessToken,
      refreshToken: _authResult.refreshToken,
    );
  }

  AuthResult get _authResult => source;
}
