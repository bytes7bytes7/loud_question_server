// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_not_ready_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetNotReadyRequest _$SetNotReadyRequestFromJson(Map<String, dynamic> json) =>
    SetNotReadyRequest(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetNotReadyRequestToJson(SetNotReadyRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
    };
