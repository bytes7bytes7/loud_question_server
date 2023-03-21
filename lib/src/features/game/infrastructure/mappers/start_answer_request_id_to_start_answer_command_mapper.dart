import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class StartAnswerRequestIDToStartAnswerCommandMapper
    extends TwoSourcesMapper<StartAnswerRequest, UserID, StartAnswerCommand> {
  StartAnswerRequestIDToStartAnswerCommandMapper(super.input);

  @override
  StartAnswerCommand map() {
    return StartAnswerCommand(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  StartAnswerRequest get _request => source1;

  UserID get _userID => source2;
}
