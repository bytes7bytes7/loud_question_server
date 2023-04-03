import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'change_question_request.g.dart';

@JsonSerializable()
class ChangeQuestionRequest {
  const ChangeQuestionRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory ChangeQuestionRequest.fromJson(JsonMap json) =>
      _$ChangeQuestionRequestFromJson(json);

  JsonMap toJson() => _$ChangeQuestionRequestToJson(this);
}
