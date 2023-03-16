import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'start_round_response.g.dart';

@JsonSerializable()
class StartRoundResponse {
  const StartRoundResponse({
    required this.gameState,
  });

  final GameState gameState;

  factory StartRoundResponse.fromJson(JsonMap json) =>
      _$StartRoundResponseFromJson(json);

  JsonMap toJson() => _$StartRoundResponseToJson(this);
}
