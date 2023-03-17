import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class GiveAnswerRequestIDToGiveAnswerCommandMapper
    extends TwoSourcesMapper<GiveAnswerRequest, UserID, GiveAnswerCommand> {
  GiveAnswerRequestIDToGiveAnswerCommandMapper(super.input);

  @override
  GiveAnswerCommand map() {
    return GiveAnswerCommand(
      userID: _userID,
      lobbyID: LobbyID(_request.lobbyID),
      answer: _request.answer,
    );
  }

  GiveAnswerRequest get _request => source1;

  UserID get _userID => source2;
}
