import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<CreateLobbyRequest, JsonMap>)
class CreateLobbyRequestJsonConverter
    extends JsonConverter<CreateLobbyRequest, JsonMap> {
  const CreateLobbyRequestJsonConverter();

  @override
  CreateLobbyRequest fromJson(JsonMap json) {
    return CreateLobbyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CreateLobbyRequest object) {
    return object.toJson();
  }
}
