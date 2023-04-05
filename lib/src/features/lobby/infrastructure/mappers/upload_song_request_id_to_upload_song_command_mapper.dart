import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class UploadSongRequestIDToUploadSongCommandMapper
    extends TwoSourcesMapper<UploadSongRequest, UserID, UploadSongCommand> {
  UploadSongRequestIDToUploadSongCommandMapper(super.input);

  @override
  UploadSongCommand map() {
    return UploadSongCommand(
      userID: _userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
    );
  }

  UploadSongRequest get _request => source1;

  UserID get _userID => source2;
}
