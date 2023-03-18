import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class SetNotReadyRequestIDToSetNotReadyCommandMapper
    extends TwoSourcesMapper<SetNotReadyRequest, UserID, SetNotReadyCommand> {
  SetNotReadyRequestIDToSetNotReadyCommandMapper(super.input);

  @override
  SetNotReadyCommand map() {
    return SetNotReadyCommand(
      userID: _userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
    );
  }

  SetNotReadyRequest get _request => source1;

  UserID get _userID => source2;
}
