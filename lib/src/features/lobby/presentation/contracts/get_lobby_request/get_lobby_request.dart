import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_lobby_request.g.dart';

@JsonSerializable()
class GetLobbyRequest {
  const GetLobbyRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory GetLobbyRequest.fromJson(JsonMap json) =>
      _$GetLobbyRequestFromJson(json);

  JsonMap toJson() => _$GetLobbyRequestToJson(this);
}
