import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class StartAnswerCommand
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  StartAnswerCommand({
    required this.lobbyID,
    required this.userID,
  }) : super(StartAnswerCommand);

  final LobbyID lobbyID;
  final UserID userID;
}
