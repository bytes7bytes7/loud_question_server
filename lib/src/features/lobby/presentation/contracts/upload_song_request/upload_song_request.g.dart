// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_song_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadSongRequest _$UploadSongRequestFromJson(Map<String, dynamic> json) =>
    UploadSongRequest(
      lobbyID: json['lobbyID'] as String,
      encodedBytes: json['encodedBytes'] as String,
    );

Map<String, dynamic> _$UploadSongRequestToJson(UploadSongRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'encodedBytes': instance.encodedBytes,
    };
