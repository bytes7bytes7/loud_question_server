import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class UploadSongCommand
    extends Request<Either<List<DetailedException>, LobbyResult>> {
  UploadSongCommand({
    required this.userID,
    required this.lobbyID,
  }) : super(UploadSongCommand);

  final LobbyID lobbyID;
  final UserID userID;
}
