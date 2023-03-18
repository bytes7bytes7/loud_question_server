import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_state/get_state.dart';
import '../../presentation/contracts/contracts.dart';

class GetStateRequestIDToGetStateQueryMapper
    extends TwoSourcesMapper<GetStateRequest, UserID, GetStateQuery> {
  GetStateRequestIDToGetStateQueryMapper(super.input);

  @override
  GetStateQuery map() {
    return GetStateQuery(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  GetStateRequest get _request => source1;

  UserID get _userID => source2;
}
