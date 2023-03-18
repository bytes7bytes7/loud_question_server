import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'set_not_ready_request.g.dart';

@JsonSerializable()
class SetNotReadyRequest {
  const SetNotReadyRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory SetNotReadyRequest.fromJson(JsonMap json) =>
      _$SetNotReadyRequestFromJson(json);

  JsonMap toJson() => _$SetNotReadyRequestToJson(this);
}
