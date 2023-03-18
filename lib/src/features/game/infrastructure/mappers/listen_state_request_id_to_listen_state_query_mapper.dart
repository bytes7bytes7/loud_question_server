import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/listen_state/listen_state.dart';
import '../../presentation/contracts/contracts.dart';

class ListenStateRequestIDToListenStateQueryMapper
    extends TwoSourcesMapper<ListenStateRequest, UserID, ListenStateQuery> {
  ListenStateRequestIDToListenStateQueryMapper(super.input);

  @override
  ListenStateQuery map() {
    return ListenStateQuery(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  ListenStateRequest get _request => source1;

  UserID get _userID => source2;
}
