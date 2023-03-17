import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class StartRoundRequestIDToStartRoundCommandMapper
    extends TwoSourcesMapper<StartRoundRequest, UserID, StartRoundCommand> {
  StartRoundRequestIDToStartRoundCommandMapper(super.input);

  @override
  StartRoundCommand map() {
    return StartRoundCommand(
      userID: _userID,
      lobbyID: _request.lobbyID,
    );
  }

  StartRoundRequest get _request => source1;

  UserID get _userID => source2;
}
