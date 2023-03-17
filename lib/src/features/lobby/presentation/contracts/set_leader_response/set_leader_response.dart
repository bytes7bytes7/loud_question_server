import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../lobby/domain/domain.dart';

part 'set_leader_response.g.dart';

@JsonSerializable()
class SetLeaderResponse {
  const SetLeaderResponse({
    required this.lobby,
  });

  final Lobby lobby;

  factory SetLeaderResponse.fromJson(JsonMap json) =>
      _$SetLeaderResponseFromJson(json);

  JsonMap toJson() => _$SetLeaderResponseToJson(this);
}
