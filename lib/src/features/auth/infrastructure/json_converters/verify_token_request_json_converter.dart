import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<VerifyTokenRequest, JsonMap>)
class VerifyTokenRequestJsonConverter
    extends JsonConverter<VerifyTokenRequest, JsonMap> {
  const VerifyTokenRequestJsonConverter();

  @override
  VerifyTokenRequest fromJson(JsonMap json) {
    return VerifyTokenRequest.fromJson(json);
  }

  @override
  JsonMap toJson(VerifyTokenRequest object) {
    return object.toJson();
  }
}
