import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_lobby/get_lobby.dart';
import '../../presentation/contracts/contracts.dart';

class GetLobbyRequestIDToGetLobbyQueryMapper
    extends TwoSourcesMapper<GetLobbyRequest, UserID, GetLobbyQuery> {
  GetLobbyRequestIDToGetLobbyQueryMapper(super.input);

  @override
  GetLobbyQuery map() {
    return GetLobbyQuery(
      userID: _userID,
      lobbyID: LobbyID.fromString(_request.lobbyID),
    );
  }

  GetLobbyRequest get _request => source1;

  UserID get _userID => source2;
}
