import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class LogInQuery extends Request<Either<List<DetailedException>, AuthResult>> {
  LogInQuery({
    required this.name,
    required this.password,
  }) : super(LogInQuery);

  final String name;
  final String password;
}
