// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_lobby_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinLobbyRequest _$JoinLobbyRequestFromJson(Map<String, dynamic> json) =>
    JoinLobbyRequest(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
      password: json['password'] as String,
    );

Map<String, dynamic> _$JoinLobbyRequestToJson(JoinLobbyRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'password': instance.password,
    };
