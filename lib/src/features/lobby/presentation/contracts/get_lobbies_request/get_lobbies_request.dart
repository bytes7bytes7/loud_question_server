import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_lobbies_request.g.dart';

@JsonSerializable()
class GetLobbiesRequest {
  const GetLobbiesRequest();

  factory GetLobbiesRequest.fromJson(JsonMap json) =>
      _$GetLobbiesRequestFromJson(json);

  JsonMap toJson() => _$GetLobbiesRequestToJson(this);
}
