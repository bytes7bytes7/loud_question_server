import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GiveAnswerCommand
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  GiveAnswerCommand({
    required this.userID,
    required this.lobbyID,
    required this.answer,
  }) : super(GiveAnswerCommand);

  final UserID userID;
  final LobbyID lobbyID;
  final String answer;
}
