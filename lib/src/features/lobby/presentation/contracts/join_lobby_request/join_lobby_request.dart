import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'join_lobby_request.g.dart';

@JsonSerializable()
class JoinLobbyRequest {
  const JoinLobbyRequest({
    required this.lobbyID,
    required this.password,
  });

  final LobbyID lobbyID;
  final String password;

  factory JoinLobbyRequest.fromJson(JsonMap json) =>
      _$JoinLobbyRequestFromJson(json);

  JsonMap toJson() => _$JoinLobbyRequestToJson(this);
}
