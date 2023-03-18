import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../application/view_models/view_models.dart';

part 'game_state_response.g.dart';

@JsonSerializable()
class GameStateResponse {
  const GameStateResponse({
    required this.gameState,
  });

  final GameStateVM gameState;

  factory GameStateResponse.fromJson(JsonMap json) =>
      _$GameStateResponseFromJson(json);

  JsonMap toJson() => _$GameStateResponseToJson(this);
}
