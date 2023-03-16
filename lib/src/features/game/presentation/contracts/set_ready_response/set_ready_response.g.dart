// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_ready_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetReadyResponse _$SetReadyResponseFromJson(Map<String, dynamic> json) =>
    SetReadyResponse(
      gameState: GameState.fromJson(json['gameState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetReadyResponseToJson(SetReadyResponse instance) =>
    <String, dynamic>{
      'gameState': instance.gameState,
    };
