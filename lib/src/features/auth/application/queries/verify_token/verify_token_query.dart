import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class VerifyTokenQuery
    extends Request<Either<List<DetailedException>, VerifyTokenResult>> {
  VerifyTokenQuery({
    required this.accessToken,
    required this.deviceInfo,
  }) : super(VerifyTokenQuery);

  final String accessToken;
  final DeviceInfo deviceInfo;
}
