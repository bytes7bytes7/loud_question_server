import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<StartRoundRequest, JsonMap>)
class StartRoundRequestJsonConverter
    extends JsonConverter<StartRoundRequest, JsonMap> {
  const StartRoundRequestJsonConverter();

  @override
  StartRoundRequest fromJson(JsonMap json) {
    return StartRoundRequest.fromJson(json);
  }

  @override
  JsonMap toJson(StartRoundRequest object) {
    return object.toJson();
  }
}
