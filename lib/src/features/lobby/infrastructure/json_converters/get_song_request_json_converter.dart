import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetSongRequest, JsonMap>)
class GetSongRequestJsonConverter
    extends JsonConverter<GetSongRequest, JsonMap> {
  const GetSongRequestJsonConverter();

  @override
  GetSongRequest fromJson(JsonMap json) {
    return GetSongRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetSongRequest object) {
    return object.toJson();
  }
}
