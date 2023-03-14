import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CreateLobbyCommand
    extends Request<Either<List<DetailedException>, CreateLobbyResult>> {
  CreateLobbyCommand({
    required this.creatorID,
    required this.password,
  }) : super(CreateLobbyCommand);

  final UserID creatorID;
  final String password;
}
