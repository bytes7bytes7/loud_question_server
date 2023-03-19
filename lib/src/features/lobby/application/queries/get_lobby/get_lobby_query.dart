import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetLobbyQuery
    extends Request<Either<List<DetailedException>, GetLobbyResult>> {
  GetLobbyQuery({
    required this.userID,
    required this.lobbyID,
  }) : super(GetLobbyQuery);

  final UserID userID;
  final LobbyID lobbyID;
}
