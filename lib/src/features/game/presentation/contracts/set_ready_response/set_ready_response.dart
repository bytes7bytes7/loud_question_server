import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'set_ready_response.g.dart';

@JsonSerializable()
class SetReadyResponse {
  const SetReadyResponse({
    required this.gameState,
  });

  final GameState gameState;

  factory SetReadyResponse.fromJson(JsonMap json) =>
      _$SetReadyResponseFromJson(json);

  JsonMap toJson() => _$SetReadyResponseToJson(this);
}
