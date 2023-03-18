// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'give_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiveAnswerRequest _$GiveAnswerRequestFromJson(Map<String, dynamic> json) =>
    GiveAnswerRequest(
      lobbyID: json['lobbyID'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$GiveAnswerRequestToJson(GiveAnswerRequest instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'answer': instance.answer,
    };
