import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'set_not_ready_response.g.dart';

@JsonSerializable()
class SetNotReadyResponse {
  const SetNotReadyResponse({
    required this.gameState,
  });

  final GameState gameState;

  factory SetNotReadyResponse.fromJson(JsonMap json) =>
      _$SetNotReadyResponseFromJson(json);

  JsonMap toJson() => _$SetNotReadyResponseToJson(this);
}
