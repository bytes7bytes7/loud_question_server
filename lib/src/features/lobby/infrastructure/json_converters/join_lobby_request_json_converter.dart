import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<JoinLobbyRequest, JsonMap>)
class JoinLobbyRequestJsonConverter
    extends JsonConverter<JoinLobbyRequest, JsonMap> {
  const JoinLobbyRequestJsonConverter();

  @override
  JoinLobbyRequest fromJson(JsonMap json) {
    return JoinLobbyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(JoinLobbyRequest object) {
    return object.toJson();
  }
}
