import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class JoinLobbyRequestIDToJoinLobbyCommandMapper
    extends TwoSourcesMapper<JoinLobbyRequest, UserID, JoinLobbyCommand> {
  JoinLobbyRequestIDToJoinLobbyCommandMapper(super.input);

  @override
  JoinLobbyCommand map() {
    return JoinLobbyCommand(
      guestID: _userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
      password: _request.password,
    );
  }

  JoinLobbyRequest get _request => source1;

  UserID get _userID => source2;
}
