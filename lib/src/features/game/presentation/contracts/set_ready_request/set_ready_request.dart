import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'set_ready_request.g.dart';

@JsonSerializable()
class SetReadyRequest {
  const SetReadyRequest({
    required this.lobbyID,
  });

  final LobbyID lobbyID;

  factory SetReadyRequest.fromJson(JsonMap json) =>
      _$SetReadyRequestFromJson(json);

  JsonMap toJson() => _$SetReadyRequestToJson(this);
}
