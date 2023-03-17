import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class SetLeaderCommand
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  SetLeaderCommand({
    required this.userID,
    required this.leaderID,
    required this.lobbyID,
  }) : super(SetLeaderCommand);

  final UserID userID;
  final UserID leaderID;
  final LobbyID lobbyID;
}
