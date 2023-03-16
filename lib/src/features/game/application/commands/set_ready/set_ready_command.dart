import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class SetReadyCommand
    extends Request<Either<List<DetailedException>, SetReadyResult>> {
  SetReadyCommand({
    required this.userID,
    required this.lobbyID,
  }) : super(SetReadyCommand);

  final UserID userID;
  final LobbyID lobbyID;
}
