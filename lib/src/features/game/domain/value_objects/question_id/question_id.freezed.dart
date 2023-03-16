// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionID _$QuestionIDFromJson(Map<String, dynamic> json) {
  return _QuestionID.fromJson(json);
}

/// @nodoc
mixin _$QuestionID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionIDCopyWith<QuestionID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionIDCopyWith<$Res> {
  factory $QuestionIDCopyWith(
          QuestionID value, $Res Function(QuestionID) then) =
      _$QuestionIDCopyWithImpl<$Res, QuestionID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$QuestionIDCopyWithImpl<$Res, $Val extends QuestionID>
    implements $QuestionIDCopyWith<$Res> {
  _$QuestionIDCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionIDCopyWith<$Res>
    implements $QuestionIDCopyWith<$Res> {
  factory _$$_QuestionIDCopyWith(
          _$_QuestionID value, $Res Function(_$_QuestionID) then) =
      __$$_QuestionIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_QuestionIDCopyWithImpl<$Res>
    extends _$QuestionIDCopyWithImpl<$Res, _$_QuestionID>
    implements _$$_QuestionIDCopyWith<$Res> {
  __$$_QuestionIDCopyWithImpl(
      _$_QuestionID _value, $Res Function(_$_QuestionID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_QuestionID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionID extends _QuestionID {
  const _$_QuestionID(this.value) : super._();

  factory _$_QuestionID.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'QuestionID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionIDCopyWith<_$_QuestionID> get copyWith =>
      __$$_QuestionIDCopyWithImpl<_$_QuestionID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionIDToJson(
      this,
    );
  }
}

abstract class _QuestionID extends QuestionID {
  const factory _QuestionID(final String value) = _$_QuestionID;
  const _QuestionID._() : super._();

  factory _QuestionID.fromJson(Map<String, dynamic> json) =
      _$_QuestionID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionIDCopyWith<_$_QuestionID> get copyWith =>
      throw _privateConstructorUsedError;
}
