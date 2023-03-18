import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ListenStateRequest, JsonMap>)
class ListenStateRequestJsonConverter
    extends JsonConverter<ListenStateRequest, JsonMap> {
  const ListenStateRequestJsonConverter();

  @override
  ListenStateRequest fromJson(JsonMap json) {
    return ListenStateRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ListenStateRequest object) {
    return object.toJson();
  }
}
