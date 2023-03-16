// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_round_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartRoundResponse _$StartRoundResponseFromJson(Map<String, dynamic> json) =>
    StartRoundResponse(
      gameState: GameState.fromJson(json['gameState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StartRoundResponseToJson(StartRoundResponse instance) =>
    <String, dynamic>{
      'gameState': instance.gameState,
    };
