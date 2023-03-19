import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_user_request.g.dart';

@JsonSerializable()
class GetUserRequest {
  const GetUserRequest({
    required this.userID,
  });

  final String userID;

  factory GetUserRequest.fromJson(JsonMap json) =>
      _$GetUserRequestFromJson(json);

  JsonMap toJson() => _$GetUserRequestToJson(this);
}
