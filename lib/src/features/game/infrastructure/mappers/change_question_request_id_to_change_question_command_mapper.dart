import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/change_question/change_question.dart';
import '../../presentation/contracts/contracts.dart';

class ChangeQuestionRequestIDToChangeQuestionCommandMapper
    extends TwoSourcesMapper<ChangeQuestionRequest, UserID,
        ChangeQuestionCommand> {
  ChangeQuestionRequestIDToChangeQuestionCommandMapper(super.input);

  @override
  ChangeQuestionCommand map() {
    return ChangeQuestionCommand(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  ChangeQuestionRequest get _request => source1;

  UserID get _userID => source2;
}
