import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'listen_state_request.g.dart';

@JsonSerializable()
class ListenStateRequest {
  const ListenStateRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory ListenStateRequest.fromJson(JsonMap json) =>
      _$ListenStateRequestFromJson(json);

  JsonMap toJson() => _$ListenStateRequestToJson(this);
}
