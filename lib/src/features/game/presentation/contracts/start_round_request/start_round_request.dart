import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'start_round_request.g.dart';

@JsonSerializable()
class StartRoundRequest {
  const StartRoundRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory StartRoundRequest.fromJson(JsonMap json) =>
      _$StartRoundRequestFromJson(json);

  JsonMap toJson() => _$StartRoundRequestToJson(this);
}
