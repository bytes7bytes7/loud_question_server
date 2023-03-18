import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'restart_request.g.dart';

@JsonSerializable()
class RestartRequest {
  const RestartRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory RestartRequest.fromJson(JsonMap json) =>
      _$RestartRequestFromJson(json);

  JsonMap toJson() => _$RestartRequestToJson(this);
}
