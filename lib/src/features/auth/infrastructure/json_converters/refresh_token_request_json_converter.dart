import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RefreshTokenRequest, JsonMap>)
class RefreshTokenRequestJsonConverter
    extends JsonConverter<RefreshTokenRequest, JsonMap> {
  const RefreshTokenRequestJsonConverter();

  @override
  RefreshTokenRequest fromJson(JsonMap json) {
    return RefreshTokenRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RefreshTokenRequest object) {
    return object.toJson();
  }
}
