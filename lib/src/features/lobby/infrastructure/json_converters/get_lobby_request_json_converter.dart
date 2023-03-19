import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetLobbyRequest, JsonMap>)
class GetLobbyRequestJsonConverter
    extends JsonConverter<GetLobbyRequest, JsonMap> {
  const GetLobbyRequestJsonConverter();

  @override
  GetLobbyRequest fromJson(JsonMap json) {
    return GetLobbyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetLobbyRequest object) {
    return object.toJson();
  }
}
