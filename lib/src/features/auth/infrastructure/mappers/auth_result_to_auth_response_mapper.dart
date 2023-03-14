import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/presentation.dart';

class AuthResultToAuthResponseMapper
    extends OneSourceMapper<AuthResult, AuthResponse> {
  AuthResultToAuthResponseMapper(super.input);

  @override
  AuthResponse map() {
    return AuthResponse(
      user: User(
        id: _authResult.user.id,
        name: _authResult.user.name,
      ),
      token: _authResult.token,
    );
  }

  AuthResult get _authResult => source;
}
