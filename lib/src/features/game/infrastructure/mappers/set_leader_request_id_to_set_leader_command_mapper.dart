import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class SetLeaderRequestIDToSetLeaderCommandMapper
    extends TwoSourcesMapper<SetLeaderRequest, UserID, SetLeaderCommand> {
  SetLeaderRequestIDToSetLeaderCommandMapper(super.input);

  @override
  SetLeaderCommand map() {
    return SetLeaderCommand(
      userID: _userID,
      leaderID: _request.userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
    );
  }

  SetLeaderRequest get _request => source1;

  UserID get _userID => source2;
}
