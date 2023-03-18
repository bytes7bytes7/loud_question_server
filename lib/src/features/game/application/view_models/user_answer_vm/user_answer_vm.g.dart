// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_answer_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAnswerVM _$$_UserAnswerVMFromJson(Map<String, dynamic> json) =>
    _$_UserAnswerVM(
      userID: UserID.fromJson(json['userID'] as Map<String, dynamic>),
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_UserAnswerVMToJson(_$_UserAnswerVM instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'answer': instance.answer,
    };
