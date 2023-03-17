// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_ready_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetReadyRequest _$SetReadyRequestFromJson(Map<String, dynamic> json) =>
    SetReadyRequest(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetReadyRequestToJson(SetReadyRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
    };
