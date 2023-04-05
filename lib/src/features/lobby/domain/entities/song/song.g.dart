// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: SongID.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] as String,
      encodedBytes: json['encodedBytes'] as String,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'encodedBytes': instance.encodedBytes,
    };
