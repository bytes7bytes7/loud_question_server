import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class SetReadyRequestIDToSetReadyCommandMapper
    extends TwoSourcesMapper<SetReadyRequest, UserID, SetReadyCommand> {
  SetReadyRequestIDToSetReadyCommandMapper(super.input);

  @override
  SetReadyCommand map() {
    return SetReadyCommand(
      userID: _userID,
      lobbyID: LobbyID(_request.lobbyID),
    );
  }

  SetReadyRequest get _request => source1;

  UserID get _userID => source2;
}
