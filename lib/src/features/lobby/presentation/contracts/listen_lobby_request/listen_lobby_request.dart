import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'listen_lobby_request.g.dart';

@JsonSerializable()
class ListenLobbyRequest {
  const ListenLobbyRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory ListenLobbyRequest.fromJson(JsonMap json) =>
      _$ListenLobbyRequestFromJson(json);

  JsonMap toJson() => _$ListenLobbyRequestToJson(this);
}
