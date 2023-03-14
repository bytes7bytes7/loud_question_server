import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<LogOutRequest, JsonMap>)
class LogOutRequestJsonConverter extends JsonConverter<LogOutRequest, JsonMap> {
  const LogOutRequestJsonConverter();

  @override
  LogOutRequest fromJson(JsonMap json) {
    return LogOutRequest.fromJson(json);
  }

  @override
  JsonMap toJson(LogOutRequest object) {
    return object.toJson();
  }
}
