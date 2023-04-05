// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LobbyResponse _$LobbyResponseFromJson(Map<String, dynamic> json) =>
    LobbyResponse(
      lobby: Lobby.fromJson(json['lobby'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LobbyResponseToJson(LobbyResponse instance) =>
    <String, dynamic>{
      'lobby': instance.lobby,
    };
