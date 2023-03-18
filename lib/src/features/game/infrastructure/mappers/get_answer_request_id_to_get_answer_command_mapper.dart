import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class GetAnswerRequestIDToGetAnswerCommandMapper
    extends TwoSourcesMapper<GetAnswerRequest, UserID, GetAnswerCommand> {
  GetAnswerRequestIDToGetAnswerCommandMapper(super.input);

  @override
  GetAnswerCommand map() {
    return GetAnswerCommand(
      userID: _userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
    );
  }

  GetAnswerRequest get _request => source1;

  UserID get _userID => source2;
}
