// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_round_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartRoundRequest _$StartRoundRequestFromJson(Map<String, dynamic> json) =>
    StartRoundRequest(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StartRoundRequestToJson(StartRoundRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
    };
