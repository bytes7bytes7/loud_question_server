import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class LogOutCommand
    extends Request<Either<List<DetailedException>, LogOutResult>> {
  LogOutCommand({
    required this.accessToken,
  }) : super(LogOutCommand);

  final String accessToken;
}
