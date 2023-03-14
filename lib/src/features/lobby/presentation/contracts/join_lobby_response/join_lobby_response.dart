import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'join_lobby_response.g.dart';

@JsonSerializable()
class JoinLobbyResponse {
  const JoinLobbyResponse({
    required this.lobby,
  });

  final Lobby lobby;

  factory JoinLobbyResponse.fromJson(JsonMap json) =>
      _$JoinLobbyResponseFromJson(json);

  JsonMap toJson() => _$JoinLobbyResponseToJson(this);
}
