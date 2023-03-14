import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/utils.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

const _userPrefix = 'e';
const _staffUserPrefix = 's';

@freezed
class UserID with _$UserID {
  const factory UserID(String value) = _UserID;

  factory UserID.generateEnd() {
    return _UserID('$_userPrefix${Uuid().v4()}');
  }

  factory UserID.generateStaff() {
    return _UserID('$_staffUserPrefix${Uuid().v4()}');
  }

  const UserID._();

  factory UserID.fromJson(JsonMap json) => _$UserIDFromJson(json);

  String get str => value;

  bool get isUserID => value.startsWith(_userPrefix);

  bool get isStaffUserID => value.startsWith(_staffUserPrefix);
}
