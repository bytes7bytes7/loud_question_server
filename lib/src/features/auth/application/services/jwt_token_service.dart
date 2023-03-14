import '../../../common/common.dart';
import '../../domain/domain.dart';

enum JwtVerificationStatus {
  verified,
  expired,
  invalid,
}

abstract class JwtTokenService {
  TokenPair generate(EndUser user);

  JwtVerificationStatus verify(String token);
}
