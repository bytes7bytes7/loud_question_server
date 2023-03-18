import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class ListenStateQuery
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  ListenStateQuery({
    required this.lobbyID,
    required this.userID,
  }) : super(ListenStateQuery);

  final LobbyID lobbyID;
  final UserID userID;
}
