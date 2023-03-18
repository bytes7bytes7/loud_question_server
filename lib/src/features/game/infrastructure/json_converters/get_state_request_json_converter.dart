import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetStateRequest, JsonMap>)
class GetStateRequestJsonConverter
    extends JsonConverter<GetStateRequest, JsonMap> {
  const GetStateRequestJsonConverter();

  @override
  GetStateRequest fromJson(JsonMap json) {
    return GetStateRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetStateRequest object) {
    return object.toJson();
  }
}
