import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GiveAnswerRequest, JsonMap>)
class GiveAnswerRequestJsonConverter
    extends JsonConverter<GiveAnswerRequest, JsonMap> {
  const GiveAnswerRequestJsonConverter();

  @override
  GiveAnswerRequest fromJson(JsonMap json) {
    return GiveAnswerRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GiveAnswerRequest object) {
    return object.toJson();
  }
}
