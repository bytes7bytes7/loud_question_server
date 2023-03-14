import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class RefreshTokenCommand
    extends Request<Either<List<DetailedException>, RefreshTokenResult>> {
  RefreshTokenCommand({
    required this.refreshToken,
    required this.deviceInfo,
    required this.ip,
  }) : super(RefreshTokenCommand);

  final String refreshToken;
  final DeviceInfo deviceInfo;
  final String ip;
}
