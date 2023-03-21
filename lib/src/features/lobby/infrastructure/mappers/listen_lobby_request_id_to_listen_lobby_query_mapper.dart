import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/listen_lobby/listen_lobby.dart';
import '../../presentation/contracts/contracts.dart';

class ListenLobbyRequestIDToListenLobbyQueryMapper
    extends TwoSourcesMapper<ListenLobbyRequest, UserID, ListenLobbyQuery> {
  ListenLobbyRequestIDToListenLobbyQueryMapper(super.input);

  @override
  ListenLobbyQuery map() {
    return ListenLobbyQuery(
      lobbyID: LobbyID.fromString(_request.lobbyID),
      userID: _userID,
    );
  }

  ListenLobbyRequest get _request => source1;

  UserID get _userID => source2;
}
