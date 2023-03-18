import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetStateQuery
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  GetStateQuery({
    required this.lobbyID,
    required this.userID,
  }) : super(GetStateQuery);

  final LobbyID lobbyID;
  final UserID userID;
}
