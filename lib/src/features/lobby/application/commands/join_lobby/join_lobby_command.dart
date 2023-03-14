import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';

class JoinLobbyCommand
    extends Request<Either<List<DetailedException>, JoinLobbyResult>> {
  JoinLobbyCommand({
    required this.guestID,
    required this.lobbyID,
    required this.password,
  }) : super(JoinLobbyCommand);

  final UserID guestID;
  final LobbyID lobbyID;
  final String password;
}
