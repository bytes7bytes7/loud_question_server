import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/change_question_request/change_question_request.dart';

@Singleton(as: JsonConverter<ChangeQuestionRequest, JsonMap>)
class ChangeQuestionRequestJsonConverter
    extends JsonConverter<ChangeQuestionRequest, JsonMap> {
  const ChangeQuestionRequestJsonConverter();

  @override
  ChangeQuestionRequest fromJson(JsonMap json) {
    return ChangeQuestionRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ChangeQuestionRequest object) {
    return object.toJson();
  }
}
