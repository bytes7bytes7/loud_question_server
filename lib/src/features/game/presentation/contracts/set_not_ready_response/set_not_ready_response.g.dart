// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_not_ready_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetNotReadyResponse _$SetNotReadyResponseFromJson(Map<String, dynamic> json) =>
    SetNotReadyResponse(
      gameState: GameState.fromJson(json['gameState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetNotReadyResponseToJson(
        SetNotReadyResponse instance) =>
    <String, dynamic>{
      'gameState': instance.gameState,
    };
