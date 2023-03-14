import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class CreateLobbyRequestIDToCreateLobbyCommandMapper
    extends TwoSourcesMapper<CreateLobbyRequest, UserID, CreateLobbyCommand> {
  CreateLobbyRequestIDToCreateLobbyCommandMapper(super.input);

  @override
  CreateLobbyCommand map() {
    return CreateLobbyCommand(
      creatorID: _userID,
      password: _request.password,
    );
  }

  CreateLobbyRequest get _request => source1;

  UserID get _userID => source2;
}
