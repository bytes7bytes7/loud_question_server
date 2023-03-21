import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class ListenLobbyQuery
    extends Request<Either<List<DetailedException>, ListenLobbyResult>> {
  ListenLobbyQuery({
    required this.lobbyID,
    required this.userID,
  }) : super(ListenLobbyQuery);

  final LobbyID lobbyID;
  final UserID userID;
}
