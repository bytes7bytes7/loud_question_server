import '../../../common/common.dart';

class AuthResult {
  AuthResult({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });

  final EndUser user;
  final String accessToken;
  final String refreshToken;
}
