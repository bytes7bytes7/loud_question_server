// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_leader_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetLeaderRequest _$SetLeaderRequestFromJson(Map<String, dynamic> json) =>
    SetLeaderRequest(
      lobbyID: json['lobbyID'] as String,
      userID: UserID.fromJson(json['userID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetLeaderRequestToJson(SetLeaderRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'userID': instance.userID,
    };
