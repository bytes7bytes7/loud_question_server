import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<LogInRequest, JsonMap>)
class LogInRequestJsonConverter extends JsonConverter<LogInRequest, JsonMap> {
  const LogInRequestJsonConverter();

  @override
  LogInRequest fromJson(JsonMap json) {
    return LogInRequest.fromJson(json);
  }

  @override
  JsonMap toJson(LogInRequest object) {
    return object.toJson();
  }
}
