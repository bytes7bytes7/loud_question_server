import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/question_id/question_id.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  const Question({
    required this.id,
    required this.content,
    required this.answer,
    required this.theme,
  });

  final QuestionID id;
  final String content;
  final String answer;
  final String theme;

  factory Question.fromJson(JsonMap json) => _$QuestionFromJson(json);

  JsonMap toJson() => _$QuestionToJson(this);
}
