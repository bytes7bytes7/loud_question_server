import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class StartRoundCommand
    extends Request<Either<List<DetailedException>, StartRoundResult>> {
  StartRoundCommand({
    required this.userID,
    required this.lobbyID,
  }) : super(StartRoundCommand);

  final UserID userID;
  final LobbyID lobbyID;
}
