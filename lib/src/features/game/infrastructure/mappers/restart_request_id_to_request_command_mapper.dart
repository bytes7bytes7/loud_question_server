import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class RestartRequestIDToRestartCommandMapper
    extends TwoSourcesMapper<RestartRequest, UserID, RestartCommand> {
  RestartRequestIDToRestartCommandMapper(super.input);

  @override
  RestartCommand map() {
    return RestartCommand(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  RestartRequest get _request => source1;

  UserID get _userID => source2;
}
