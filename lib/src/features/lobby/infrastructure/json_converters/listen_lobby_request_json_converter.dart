import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ListenLobbyRequest, JsonMap>)
class ListenLobbyRequestJsonConverter
    extends JsonConverter<ListenLobbyRequest, JsonMap> {
  const ListenLobbyRequestJsonConverter();

  @override
  ListenLobbyRequest fromJson(JsonMap json) {
    return ListenLobbyRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ListenLobbyRequest object) {
    return object.toJson();
  }
}
