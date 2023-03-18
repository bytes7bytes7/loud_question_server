import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetAnswerRequest, JsonMap>)
class GetAnswerRequestJsonConverter
    extends JsonConverter<GetAnswerRequest, JsonMap> {
  const GetAnswerRequestJsonConverter();

  @override
  GetAnswerRequest fromJson(JsonMap json) {
    return GetAnswerRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetAnswerRequest object) {
    return object.toJson();
  }
}
