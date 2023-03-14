import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../../../common/common.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  const AuthResponse({
    required this.user,
    required this.token,
  });

  final User user;
  final String token;

  factory AuthResponse.fromJson(JsonMap json) => _$AuthResponseFromJson(json);

  JsonMap toJson() => _$AuthResponseToJson(this);
}
