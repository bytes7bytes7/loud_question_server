// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitGameStateVM _$$InitGameStateVMFromJson(Map<String, dynamic> json) =>
    _$InitGameStateVM(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
      leaderID: UserID.fromJson(json['leaderID'] as Map<String, dynamic>),
      readyIDs: (json['readyIDs'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InitGameStateVMToJson(_$InitGameStateVM instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'leaderID': instance.leaderID,
      'readyIDs': instance.readyIDs,
      'type': instance.$type,
    };

_$PlayingGameStateVM _$$PlayingGameStateVMFromJson(Map<String, dynamic> json) =>
    _$PlayingGameStateVM(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
      leaderID: UserID.fromJson(json['leaderID'] as Map<String, dynamic>),
      startedAtMSSinceEpoch: json['startedAtMSSinceEpoch'] as int,
      endsAfterSeconds: json['endsAfterSeconds'] as int,
      question: json['question'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayingGameStateVMToJson(
        _$PlayingGameStateVM instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'leaderID': instance.leaderID,
      'startedAtMSSinceEpoch': instance.startedAtMSSinceEpoch,
      'endsAfterSeconds': instance.endsAfterSeconds,
      'question': instance.question,
      'type': instance.$type,
    };

_$WaitingForAnswerGameStateVM _$$WaitingForAnswerGameStateVMFromJson(
        Map<String, dynamic> json) =>
    _$WaitingForAnswerGameStateVM(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
      leaderID: UserID.fromJson(json['leaderID'] as Map<String, dynamic>),
      hasAnswered: (json['hasAnswered'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      question: json['question'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WaitingForAnswerGameStateVMToJson(
        _$WaitingForAnswerGameStateVM instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'leaderID': instance.leaderID,
      'hasAnswered': instance.hasAnswered,
      'question': instance.question,
      'type': instance.$type,
    };

_$CheckingAnswerGameStateVM _$$CheckingAnswerGameStateVMFromJson(
        Map<String, dynamic> json) =>
    _$CheckingAnswerGameStateVM(
      lobbyID: LobbyID.fromJson(json['lobbyID'] as Map<String, dynamic>),
      leaderID: UserID.fromJson(json['leaderID'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => UserAnswerVM.fromJson(e as Map<String, dynamic>))
          .toList(),
      question: json['question'] as String,
      rightAnswer: json['rightAnswer'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CheckingAnswerGameStateVMToJson(
        _$CheckingAnswerGameStateVM instance) =>
    <String, dynamic>{
      'lobbyID': instance.lobbyID,
      'leaderID': instance.leaderID,
      'answers': instance.answers,
      'question': instance.question,
      'rightAnswer': instance.rightAnswer,
      'type': instance.$type,
    };
