import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/utils.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

@freezed
class UserID with _$UserID {
  const factory UserID(String value) = _UserID;

  factory UserID.generate() {
    return UserID(Uuid().v4());
  }

  const UserID._();

  factory UserID.fromJson(JsonMap json) => _$UserIDFromJson(json);

  factory UserID.fromString(String string) => UserID(string);

  String get str => value;
}
