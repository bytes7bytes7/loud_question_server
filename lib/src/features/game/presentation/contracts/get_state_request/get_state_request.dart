import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_state_request.g.dart';

@JsonSerializable()
class GetStateRequest {
  const GetStateRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory GetStateRequest.fromJson(JsonMap json) =>
      _$GetStateRequestFromJson(json);

  JsonMap toJson() => _$GetStateRequestToJson(this);
}
