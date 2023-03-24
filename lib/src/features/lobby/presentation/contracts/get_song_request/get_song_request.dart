import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_song_request.g.dart';

@JsonSerializable()
class GetSongRequest {
  const GetSongRequest();

  factory GetSongRequest.fromJson(JsonMap json) =>
      _$GetSongRequestFromJson(json);

  JsonMap toJson() => _$GetSongRequestToJson(this);
}
