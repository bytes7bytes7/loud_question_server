import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'question_id.freezed.dart';

part 'question_id.g.dart';

@freezed
class QuestionID with _$QuestionID {
  const factory QuestionID(String value) = _QuestionID;

  factory QuestionID.generate() {
    return QuestionID(Uuid().v4());
  }

  const QuestionID._();

  factory QuestionID.fromJson(JsonMap json) => _$QuestionIDFromJson(json);

  factory QuestionID.fromString(String string) => QuestionID(string);

  String get str => value;
}
