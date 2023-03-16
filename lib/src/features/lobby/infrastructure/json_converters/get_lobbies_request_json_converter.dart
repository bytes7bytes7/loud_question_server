import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetLobbiesRequest, JsonMap>)
class GetLobbiesRequestJsonConverter
    extends JsonConverter<GetLobbiesRequest, JsonMap> {
  const GetLobbiesRequestJsonConverter();

  @override
  GetLobbiesRequest fromJson(JsonMap json) {
    return GetLobbiesRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetLobbiesRequest object) {
    return object.toJson();
  }
}
