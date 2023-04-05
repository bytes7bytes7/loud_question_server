import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'upload_song_request.g.dart';

@JsonSerializable()
class UploadSongRequest {
  const UploadSongRequest({
    required this.lobbyID,
    required this.encodedBytes,
  });

  final String lobbyID;
  final String encodedBytes;

  factory UploadSongRequest.fromJson(JsonMap json) =>
      _$UploadSongRequestFromJson(json);

  JsonMap toJson() => _$UploadSongRequestToJson(this);
}
