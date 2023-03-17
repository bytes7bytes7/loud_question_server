// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_leader_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetLeaderResponse _$SetLeaderResponseFromJson(Map<String, dynamic> json) =>
    SetLeaderResponse(
      lobby: Lobby.fromJson(json['lobby'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetLeaderResponseToJson(SetLeaderResponse instance) =>
    <String, dynamic>{
      'lobby': instance.lobby,
    };
