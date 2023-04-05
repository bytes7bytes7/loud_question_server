import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'lobby_response.g.dart';

@JsonSerializable()
class LobbyResponse {
  const LobbyResponse({
    required this.lobby,
  });

  final Lobby lobby;

  factory LobbyResponse.fromJson(JsonMap json) => _$LobbyResponseFromJson(json);

  JsonMap toJson() => _$LobbyResponseToJson(this);
}
