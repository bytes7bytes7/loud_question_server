import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RestartRequest, JsonMap>)
class RestartRequestJsonConverter
    extends JsonConverter<RestartRequest, JsonMap> {
  const RestartRequestJsonConverter();

  @override
  RestartRequest fromJson(JsonMap json) {
    return RestartRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RestartRequest object) {
    return object.toJson();
  }
}
