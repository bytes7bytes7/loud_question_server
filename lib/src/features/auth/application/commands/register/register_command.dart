import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class RegisterCommand
    extends Request<Either<List<DetailedException>, AuthResult>> {
  RegisterCommand({
    required this.name,
    required this.password,
  }) : super(RegisterCommand);

  final String name;
  final String password;
}
