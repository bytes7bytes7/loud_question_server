import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<UploadSongRequest, JsonMap>)
class UploadSongRequestJsonConverter
    extends JsonConverter<UploadSongRequest, JsonMap> {
  const UploadSongRequestJsonConverter();

  @override
  UploadSongRequest fromJson(JsonMap json) {
    return UploadSongRequest.fromJson(json);
  }

  @override
  JsonMap toJson(UploadSongRequest object) {
    return object.toJson();
  }
}
