import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<StartAnswerRequest, JsonMap>)
class StartAnswerRequestJsonConverter
    extends JsonConverter<StartAnswerRequest, JsonMap> {
  const StartAnswerRequestJsonConverter();

  @override
  StartAnswerRequest fromJson(JsonMap json) {
    return StartAnswerRequest.fromJson(json);
  }

  @override
  JsonMap toJson(StartAnswerRequest object) {
    return object.toJson();
  }
}
