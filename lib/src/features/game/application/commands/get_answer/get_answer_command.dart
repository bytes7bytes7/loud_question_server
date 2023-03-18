import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class GetAnswerCommand
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  GetAnswerCommand({
    required this.userID,
    required this.lobbyID,
  }) : super(GetAnswerCommand);

  final UserID userID;
  final LobbyID lobbyID;
}
