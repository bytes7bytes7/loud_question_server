import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class SetNotReadyCommand
    extends Request<Either<List<DetailedException>, SetNotReadyResult>> {
  SetNotReadyCommand({
    required this.userID,
    required this.lobbyID,
  }) : super(SetNotReadyCommand);

  final UserID userID;
  final LobbyID lobbyID;
}
