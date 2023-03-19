import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/get_user_request/get_user_request.dart';

@Singleton(as: JsonConverter<GetUserRequest, JsonMap>)
class GetUserRequestJsonConverter
    extends JsonConverter<GetUserRequest, JsonMap> {
  const GetUserRequestJsonConverter();

  @override
  GetUserRequest fromJson(JsonMap json) {
    return GetUserRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserRequest object) {
    return object.toJson();
  }
}
