import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RegisterRequest, JsonMap>)
class RegisterRequestJsonConverter
    extends JsonConverter<RegisterRequest, JsonMap> {
  const RegisterRequestJsonConverter();

  @override
  RegisterRequest fromJson(JsonMap json) {
    return RegisterRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RegisterRequest object) {
    return object.toJson();
  }
}
