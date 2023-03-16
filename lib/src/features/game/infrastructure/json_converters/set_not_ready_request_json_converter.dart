import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<SetNotReadyRequest, JsonMap>)
class SetNotReadyRequestJsonConverter
    extends JsonConverter<SetNotReadyRequest, JsonMap> {
  const SetNotReadyRequestJsonConverter();

  @override
  SetNotReadyRequest fromJson(JsonMap json) {
    return SetNotReadyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(SetNotReadyRequest object) {
    return object.toJson();
  }
}
