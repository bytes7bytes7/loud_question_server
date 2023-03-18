// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_answer_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAnswerVM _$UserAnswerVMFromJson(Map<String, dynamic> json) {
  return _UserAnswerVM.fromJson(json);
}

/// @nodoc
mixin _$UserAnswerVM {
  UserID get userID => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnswerVMCopyWith<UserAnswerVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnswerVMCopyWith<$Res> {
  factory $UserAnswerVMCopyWith(
          UserAnswerVM value, $Res Function(UserAnswerVM) then) =
      _$UserAnswerVMCopyWithImpl<$Res, UserAnswerVM>;
  @useResult
  $Res call({UserID userID, String answer});

  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class _$UserAnswerVMCopyWithImpl<$Res, $Val extends UserAnswerVM>
    implements $UserAnswerVMCopyWith<$Res> {
  _$UserAnswerVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get userID {
    return $UserIDCopyWith<$Res>(_value.userID, (value) {
      return _then(_value.copyWith(userID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserAnswerVMCopyWith<$Res>
    implements $UserAnswerVMCopyWith<$Res> {
  factory _$$_UserAnswerVMCopyWith(
          _$_UserAnswerVM value, $Res Function(_$_UserAnswerVM) then) =
      __$$_UserAnswerVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID userID, String answer});

  @override
  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class __$$_UserAnswerVMCopyWithImpl<$Res>
    extends _$UserAnswerVMCopyWithImpl<$Res, _$_UserAnswerVM>
    implements _$$_UserAnswerVMCopyWith<$Res> {
  __$$_UserAnswerVMCopyWithImpl(
      _$_UserAnswerVM _value, $Res Function(_$_UserAnswerVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? answer = null,
  }) {
    return _then(_$_UserAnswerVM(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAnswerVM implements _UserAnswerVM {
  const _$_UserAnswerVM({required this.userID, required this.answer});

  factory _$_UserAnswerVM.fromJson(Map<String, dynamic> json) =>
      _$$_UserAnswerVMFromJson(json);

  @override
  final UserID userID;
  @override
  final String answer;

  @override
  String toString() {
    return 'UserAnswerVM(userID: $userID, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAnswerVM &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAnswerVMCopyWith<_$_UserAnswerVM> get copyWith =>
      __$$_UserAnswerVMCopyWithImpl<_$_UserAnswerVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAnswerVMToJson(
      this,
    );
  }
}

abstract class _UserAnswerVM implements UserAnswerVM {
  const factory _UserAnswerVM(
      {required final UserID userID,
      required final String answer}) = _$_UserAnswerVM;

  factory _UserAnswerVM.fromJson(Map<String, dynamic> json) =
      _$_UserAnswerVM.fromJson;

  @override
  UserID get userID;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_UserAnswerVMCopyWith<_$_UserAnswerVM> get copyWith =>
      throw _privateConstructorUsedError;
}
