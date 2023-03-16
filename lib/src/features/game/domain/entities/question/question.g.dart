// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: QuestionID.fromJson(json['id'] as Map<String, dynamic>),
      content: json['content'] as String,
      answer: json['answer'] as String,
      theme: json['theme'] as String,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answer': instance.answer,
      'theme': instance.theme,
    };
