// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameStateVM _$GameStateVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'init':
      return InitGameStateVM.fromJson(json);
    case 'playing':
      return PlayingGameStateVM.fromJson(json);
    case 'waitingForAnswer':
      return WaitingForAnswerGameStateVM.fromJson(json);
    case 'checkingAnswer':
      return CheckingAnswerGameStateVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'GameStateVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$GameStateVM {
  LobbyID get lobbyID => throw _privateConstructorUsedError;
  UserID get leaderID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> hasAnswered,
            String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameStateVM value) init,
    required TResult Function(PlayingGameStateVM value) playing,
    required TResult Function(WaitingForAnswerGameStateVM value)
        waitingForAnswer,
    required TResult Function(CheckingAnswerGameStateVM value) checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameStateVM value)? init,
    TResult? Function(PlayingGameStateVM value)? playing,
    TResult? Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameStateVM value)? checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameStateVM value)? init,
    TResult Function(PlayingGameStateVM value)? playing,
    TResult Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameStateVM value)? checkingAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameStateVMCopyWith<GameStateVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateVMCopyWith<$Res> {
  factory $GameStateVMCopyWith(
          GameStateVM value, $Res Function(GameStateVM) then) =
      _$GameStateVMCopyWithImpl<$Res, GameStateVM>;
  @useResult
  $Res call({LobbyID lobbyID, UserID leaderID});

  $LobbyIDCopyWith<$Res> get lobbyID;
  $UserIDCopyWith<$Res> get leaderID;
}

/// @nodoc
class _$GameStateVMCopyWithImpl<$Res, $Val extends GameStateVM>
    implements $GameStateVMCopyWith<$Res> {
  _$GameStateVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? leaderID = null,
  }) {
    return _then(_value.copyWith(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LobbyIDCopyWith<$Res> get lobbyID {
    return $LobbyIDCopyWith<$Res>(_value.lobbyID, (value) {
      return _then(_value.copyWith(lobbyID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get leaderID {
    return $UserIDCopyWith<$Res>(_value.leaderID, (value) {
      return _then(_value.copyWith(leaderID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitGameStateVMCopyWith<$Res>
    implements $GameStateVMCopyWith<$Res> {
  factory _$$InitGameStateVMCopyWith(
          _$InitGameStateVM value, $Res Function(_$InitGameStateVM) then) =
      __$$InitGameStateVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
}

/// @nodoc
class __$$InitGameStateVMCopyWithImpl<$Res>
    extends _$GameStateVMCopyWithImpl<$Res, _$InitGameStateVM>
    implements _$$InitGameStateVMCopyWith<$Res> {
  __$$InitGameStateVMCopyWithImpl(
      _$InitGameStateVM _value, $Res Function(_$InitGameStateVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? leaderID = null,
    Object? readyIDs = null,
  }) {
    return _then(_$InitGameStateVM(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      readyIDs: null == readyIDs
          ? _value._readyIDs
          : readyIDs // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitGameStateVM implements InitGameStateVM {
  const _$InitGameStateVM(
      {required this.lobbyID,
      required this.leaderID,
      required final List<UserID> readyIDs,
      final String? $type})
      : _readyIDs = readyIDs,
        $type = $type ?? 'init';

  factory _$InitGameStateVM.fromJson(Map<String, dynamic> json) =>
      _$$InitGameStateVMFromJson(json);

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final List<UserID> _readyIDs;
  @override
  List<UserID> get readyIDs {
    if (_readyIDs is EqualUnmodifiableListView) return _readyIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readyIDs);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameStateVM.init(lobbyID: $lobbyID, leaderID: $leaderID, readyIDs: $readyIDs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGameStateVM &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality().equals(other._readyIDs, _readyIDs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_readyIDs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGameStateVMCopyWith<_$InitGameStateVM> get copyWith =>
      __$$InitGameStateVMCopyWithImpl<_$InitGameStateVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)
        checkingAnswer,
  }) {
    return init(lobbyID, leaderID, readyIDs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return init?.call(lobbyID, leaderID, readyIDs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> hasAnswered,
            String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(lobbyID, leaderID, readyIDs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameStateVM value) init,
    required TResult Function(PlayingGameStateVM value) playing,
    required TResult Function(WaitingForAnswerGameStateVM value)
        waitingForAnswer,
    required TResult Function(CheckingAnswerGameStateVM value) checkingAnswer,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameStateVM value)? init,
    TResult? Function(PlayingGameStateVM value)? playing,
    TResult? Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameStateVM value)? checkingAnswer,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameStateVM value)? init,
    TResult Function(PlayingGameStateVM value)? playing,
    TResult Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameStateVM value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitGameStateVMToJson(
      this,
    );
  }
}

abstract class InitGameStateVM implements GameStateVM {
  const factory InitGameStateVM(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final List<UserID> readyIDs}) = _$InitGameStateVM;

  factory InitGameStateVM.fromJson(Map<String, dynamic> json) =
      _$InitGameStateVM.fromJson;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  List<UserID> get readyIDs;
  @override
  @JsonKey(ignore: true)
  _$$InitGameStateVMCopyWith<_$InitGameStateVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayingGameStateVMCopyWith<$Res>
    implements $GameStateVMCopyWith<$Res> {
  factory _$$PlayingGameStateVMCopyWith(_$PlayingGameStateVM value,
          $Res Function(_$PlayingGameStateVM) then) =
      __$$PlayingGameStateVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LobbyID lobbyID,
      UserID leaderID,
      int startedAtMSSinceEpoch,
      int endsAfterSeconds,
      String? question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
}

/// @nodoc
class __$$PlayingGameStateVMCopyWithImpl<$Res>
    extends _$GameStateVMCopyWithImpl<$Res, _$PlayingGameStateVM>
    implements _$$PlayingGameStateVMCopyWith<$Res> {
  __$$PlayingGameStateVMCopyWithImpl(
      _$PlayingGameStateVM _value, $Res Function(_$PlayingGameStateVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? leaderID = null,
    Object? startedAtMSSinceEpoch = null,
    Object? endsAfterSeconds = null,
    Object? question = freezed,
  }) {
    return _then(_$PlayingGameStateVM(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      startedAtMSSinceEpoch: null == startedAtMSSinceEpoch
          ? _value.startedAtMSSinceEpoch
          : startedAtMSSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      endsAfterSeconds: null == endsAfterSeconds
          ? _value.endsAfterSeconds
          : endsAfterSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayingGameStateVM implements PlayingGameStateVM {
  const _$PlayingGameStateVM(
      {required this.lobbyID,
      required this.leaderID,
      required this.startedAtMSSinceEpoch,
      required this.endsAfterSeconds,
      required this.question,
      final String? $type})
      : $type = $type ?? 'playing';

  factory _$PlayingGameStateVM.fromJson(Map<String, dynamic> json) =>
      _$$PlayingGameStateVMFromJson(json);

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  @override
  final int startedAtMSSinceEpoch;
  @override
  final int endsAfterSeconds;
  @override
  final String? question;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameStateVM.playing(lobbyID: $lobbyID, leaderID: $leaderID, startedAtMSSinceEpoch: $startedAtMSSinceEpoch, endsAfterSeconds: $endsAfterSeconds, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingGameStateVM &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            (identical(other.startedAtMSSinceEpoch, startedAtMSSinceEpoch) ||
                other.startedAtMSSinceEpoch == startedAtMSSinceEpoch) &&
            (identical(other.endsAfterSeconds, endsAfterSeconds) ||
                other.endsAfterSeconds == endsAfterSeconds) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      startedAtMSSinceEpoch, endsAfterSeconds, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingGameStateVMCopyWith<_$PlayingGameStateVM> get copyWith =>
      __$$PlayingGameStateVMCopyWithImpl<_$PlayingGameStateVM>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)
        checkingAnswer,
  }) {
    return playing(
        lobbyID, leaderID, startedAtMSSinceEpoch, endsAfterSeconds, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return playing?.call(
        lobbyID, leaderID, startedAtMSSinceEpoch, endsAfterSeconds, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> hasAnswered,
            String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(
          lobbyID, leaderID, startedAtMSSinceEpoch, endsAfterSeconds, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameStateVM value) init,
    required TResult Function(PlayingGameStateVM value) playing,
    required TResult Function(WaitingForAnswerGameStateVM value)
        waitingForAnswer,
    required TResult Function(CheckingAnswerGameStateVM value) checkingAnswer,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameStateVM value)? init,
    TResult? Function(PlayingGameStateVM value)? playing,
    TResult? Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameStateVM value)? checkingAnswer,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameStateVM value)? init,
    TResult Function(PlayingGameStateVM value)? playing,
    TResult Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameStateVM value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayingGameStateVMToJson(
      this,
    );
  }
}

abstract class PlayingGameStateVM implements GameStateVM {
  const factory PlayingGameStateVM(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final int startedAtMSSinceEpoch,
      required final int endsAfterSeconds,
      required final String? question}) = _$PlayingGameStateVM;

  factory PlayingGameStateVM.fromJson(Map<String, dynamic> json) =
      _$PlayingGameStateVM.fromJson;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  int get startedAtMSSinceEpoch;
  int get endsAfterSeconds;
  String? get question;
  @override
  @JsonKey(ignore: true)
  _$$PlayingGameStateVMCopyWith<_$PlayingGameStateVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaitingForAnswerGameStateVMCopyWith<$Res>
    implements $GameStateVMCopyWith<$Res> {
  factory _$$WaitingForAnswerGameStateVMCopyWith(
          _$WaitingForAnswerGameStateVM value,
          $Res Function(_$WaitingForAnswerGameStateVM) then) =
      __$$WaitingForAnswerGameStateVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LobbyID lobbyID,
      UserID leaderID,
      List<UserID> hasAnswered,
      String? question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
}

/// @nodoc
class __$$WaitingForAnswerGameStateVMCopyWithImpl<$Res>
    extends _$GameStateVMCopyWithImpl<$Res, _$WaitingForAnswerGameStateVM>
    implements _$$WaitingForAnswerGameStateVMCopyWith<$Res> {
  __$$WaitingForAnswerGameStateVMCopyWithImpl(
      _$WaitingForAnswerGameStateVM _value,
      $Res Function(_$WaitingForAnswerGameStateVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? leaderID = null,
    Object? hasAnswered = null,
    Object? question = freezed,
  }) {
    return _then(_$WaitingForAnswerGameStateVM(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      hasAnswered: null == hasAnswered
          ? _value._hasAnswered
          : hasAnswered // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitingForAnswerGameStateVM implements WaitingForAnswerGameStateVM {
  const _$WaitingForAnswerGameStateVM(
      {required this.lobbyID,
      required this.leaderID,
      required final List<UserID> hasAnswered,
      required this.question,
      final String? $type})
      : _hasAnswered = hasAnswered,
        $type = $type ?? 'waitingForAnswer';

  factory _$WaitingForAnswerGameStateVM.fromJson(Map<String, dynamic> json) =>
      _$$WaitingForAnswerGameStateVMFromJson(json);

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final List<UserID> _hasAnswered;
  @override
  List<UserID> get hasAnswered {
    if (_hasAnswered is EqualUnmodifiableListView) return _hasAnswered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hasAnswered);
  }

  @override
  final String? question;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameStateVM.waitingForAnswer(lobbyID: $lobbyID, leaderID: $leaderID, hasAnswered: $hasAnswered, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForAnswerGameStateVM &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality()
                .equals(other._hasAnswered, _hasAnswered) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_hasAnswered), question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForAnswerGameStateVMCopyWith<_$WaitingForAnswerGameStateVM>
      get copyWith => __$$WaitingForAnswerGameStateVMCopyWithImpl<
          _$WaitingForAnswerGameStateVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)
        checkingAnswer,
  }) {
    return waitingForAnswer(lobbyID, leaderID, hasAnswered, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return waitingForAnswer?.call(lobbyID, leaderID, hasAnswered, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> hasAnswered,
            String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(lobbyID, leaderID, hasAnswered, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameStateVM value) init,
    required TResult Function(PlayingGameStateVM value) playing,
    required TResult Function(WaitingForAnswerGameStateVM value)
        waitingForAnswer,
    required TResult Function(CheckingAnswerGameStateVM value) checkingAnswer,
  }) {
    return waitingForAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameStateVM value)? init,
    TResult? Function(PlayingGameStateVM value)? playing,
    TResult? Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameStateVM value)? checkingAnswer,
  }) {
    return waitingForAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameStateVM value)? init,
    TResult Function(PlayingGameStateVM value)? playing,
    TResult Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameStateVM value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitingForAnswerGameStateVMToJson(
      this,
    );
  }
}

abstract class WaitingForAnswerGameStateVM implements GameStateVM {
  const factory WaitingForAnswerGameStateVM(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final List<UserID> hasAnswered,
      required final String? question}) = _$WaitingForAnswerGameStateVM;

  factory WaitingForAnswerGameStateVM.fromJson(Map<String, dynamic> json) =
      _$WaitingForAnswerGameStateVM.fromJson;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  List<UserID> get hasAnswered;
  String? get question;
  @override
  @JsonKey(ignore: true)
  _$$WaitingForAnswerGameStateVMCopyWith<_$WaitingForAnswerGameStateVM>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckingAnswerGameStateVMCopyWith<$Res>
    implements $GameStateVMCopyWith<$Res> {
  factory _$$CheckingAnswerGameStateVMCopyWith(
          _$CheckingAnswerGameStateVM value,
          $Res Function(_$CheckingAnswerGameStateVM) then) =
      __$$CheckingAnswerGameStateVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LobbyID lobbyID,
      UserID leaderID,
      List<UserAnswerVM> answers,
      String question,
      String rightAnswer});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
}

/// @nodoc
class __$$CheckingAnswerGameStateVMCopyWithImpl<$Res>
    extends _$GameStateVMCopyWithImpl<$Res, _$CheckingAnswerGameStateVM>
    implements _$$CheckingAnswerGameStateVMCopyWith<$Res> {
  __$$CheckingAnswerGameStateVMCopyWithImpl(_$CheckingAnswerGameStateVM _value,
      $Res Function(_$CheckingAnswerGameStateVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? leaderID = null,
    Object? answers = null,
    Object? question = null,
    Object? rightAnswer = null,
  }) {
    return _then(_$CheckingAnswerGameStateVM(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswerVM>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckingAnswerGameStateVM implements CheckingAnswerGameStateVM {
  const _$CheckingAnswerGameStateVM(
      {required this.lobbyID,
      required this.leaderID,
      required final List<UserAnswerVM> answers,
      required this.question,
      required this.rightAnswer,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'checkingAnswer';

  factory _$CheckingAnswerGameStateVM.fromJson(Map<String, dynamic> json) =>
      _$$CheckingAnswerGameStateVMFromJson(json);

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final List<UserAnswerVM> _answers;
  @override
  List<UserAnswerVM> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String question;
  @override
  final String rightAnswer;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameStateVM.checkingAnswer(lobbyID: $lobbyID, leaderID: $leaderID, answers: $answers, question: $question, rightAnswer: $rightAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingAnswerGameStateVM &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_answers), question, rightAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckingAnswerGameStateVMCopyWith<_$CheckingAnswerGameStateVM>
      get copyWith => __$$CheckingAnswerGameStateVMCopyWithImpl<
          _$CheckingAnswerGameStateVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)
        checkingAnswer,
  }) {
    return checkingAnswer(lobbyID, leaderID, answers, question, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return checkingAnswer?.call(
        lobbyID, leaderID, answers, question, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> readyIDs)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, String? question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> hasAnswered,
            String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            List<UserAnswerVM> answers, String question, String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (checkingAnswer != null) {
      return checkingAnswer(lobbyID, leaderID, answers, question, rightAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameStateVM value) init,
    required TResult Function(PlayingGameStateVM value) playing,
    required TResult Function(WaitingForAnswerGameStateVM value)
        waitingForAnswer,
    required TResult Function(CheckingAnswerGameStateVM value) checkingAnswer,
  }) {
    return checkingAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameStateVM value)? init,
    TResult? Function(PlayingGameStateVM value)? playing,
    TResult? Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameStateVM value)? checkingAnswer,
  }) {
    return checkingAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameStateVM value)? init,
    TResult Function(PlayingGameStateVM value)? playing,
    TResult Function(WaitingForAnswerGameStateVM value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameStateVM value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (checkingAnswer != null) {
      return checkingAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckingAnswerGameStateVMToJson(
      this,
    );
  }
}

abstract class CheckingAnswerGameStateVM implements GameStateVM {
  const factory CheckingAnswerGameStateVM(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final List<UserAnswerVM> answers,
      required final String question,
      required final String rightAnswer}) = _$CheckingAnswerGameStateVM;

  factory CheckingAnswerGameStateVM.fromJson(Map<String, dynamic> json) =
      _$CheckingAnswerGameStateVM.fromJson;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  List<UserAnswerVM> get answers;
  String get question;
  String get rightAnswer;
  @override
  @JsonKey(ignore: true)
  _$$CheckingAnswerGameStateVMCopyWith<_$CheckingAnswerGameStateVM>
      get copyWith => throw _privateConstructorUsedError;
}
