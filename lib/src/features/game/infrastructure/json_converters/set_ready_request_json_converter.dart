import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<SetReadyRequest, JsonMap>)
class SetReadyRequestJsonConverter
    extends JsonConverter<SetReadyRequest, JsonMap> {
  const SetReadyRequestJsonConverter();

  @override
  SetReadyRequest fromJson(JsonMap json) {
    return SetReadyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(SetReadyRequest object) {
    return object.toJson();
  }
}
