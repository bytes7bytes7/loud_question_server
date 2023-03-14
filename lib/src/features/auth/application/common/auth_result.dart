import '../../../common/common.dart';

class AuthResult {
  AuthResult({
    required this.user,
    required this.token,
  });

  final User user;
  final String token;
}
