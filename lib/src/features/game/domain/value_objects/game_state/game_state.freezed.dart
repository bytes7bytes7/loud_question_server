// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'init':
      return InitGameState.fromJson(json);
    case 'playing':
      return PlayingGameState.fromJson(json);
    case 'waitingForAnswer':
      return WaitingForAnswerGameState.fromJson(json);
    case 'checkingAnswer':
      return CheckingAnswerGameState.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'GameState', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$GameState {
  LobbyID get lobbyID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LobbyID lobbyID, List<UserID> ready) init,
    required TResult Function(
            LobbyID lobbyID, int secondsLeft, String? question)
        playing,
    required TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult? Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult? Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)?
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, List<UserAnswer> answers, String question,
            String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameState value) init,
    required TResult Function(PlayingGameState value) playing,
    required TResult Function(WaitingForAnswerGameState value) waitingForAnswer,
    required TResult Function(CheckingAnswerGameState value) checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameState value)? init,
    TResult? Function(PlayingGameState value)? playing,
    TResult? Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameState value)? checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameState value)? init,
    TResult Function(PlayingGameState value)? playing,
    TResult Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameState value)? checkingAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({LobbyID lobbyID});

  $LobbyIDCopyWith<$Res> get lobbyID;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
  }) {
    return _then(_value.copyWith(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LobbyIDCopyWith<$Res> get lobbyID {
    return $LobbyIDCopyWith<$Res>(_value.lobbyID, (value) {
      return _then(_value.copyWith(lobbyID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$InitGameStateCopyWith(
          _$InitGameState value, $Res Function(_$InitGameState) then) =
      __$$InitGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyID lobbyID, List<UserID> ready});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
}

/// @nodoc
class __$$InitGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitGameState>
    implements _$$InitGameStateCopyWith<$Res> {
  __$$InitGameStateCopyWithImpl(
      _$InitGameState _value, $Res Function(_$InitGameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? ready = null,
  }) {
    return _then(_$InitGameState(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      ready: null == ready
          ? _value._ready
          : ready // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitGameState implements InitGameState {
  const _$InitGameState(
      {required this.lobbyID,
      required final List<UserID> ready,
      final String? $type})
      : _ready = ready,
        $type = $type ?? 'init';

  factory _$InitGameState.fromJson(Map<String, dynamic> json) =>
      _$$InitGameStateFromJson(json);

  @override
  final LobbyID lobbyID;
  final List<UserID> _ready;
  @override
  List<UserID> get ready {
    if (_ready is EqualUnmodifiableListView) return _ready;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ready);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameState.init(lobbyID: $lobbyID, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            const DeepCollectionEquality().equals(other._ready, _ready));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lobbyID, const DeepCollectionEquality().hash(_ready));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGameStateCopyWith<_$InitGameState> get copyWith =>
      __$$InitGameStateCopyWithImpl<_$InitGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LobbyID lobbyID, List<UserID> ready) init,
    required TResult Function(
            LobbyID lobbyID, int secondsLeft, String? question)
        playing,
    required TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)
        checkingAnswer,
  }) {
    return init(lobbyID, ready);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult? Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult? Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return init?.call(lobbyID, ready);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, List<UserAnswer> answers, String question,
            String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(lobbyID, ready);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameState value) init,
    required TResult Function(PlayingGameState value) playing,
    required TResult Function(WaitingForAnswerGameState value) waitingForAnswer,
    required TResult Function(CheckingAnswerGameState value) checkingAnswer,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameState value)? init,
    TResult? Function(PlayingGameState value)? playing,
    TResult? Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameState value)? checkingAnswer,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameState value)? init,
    TResult Function(PlayingGameState value)? playing,
    TResult Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameState value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitGameStateToJson(
      this,
    );
  }
}

abstract class InitGameState implements GameState {
  const factory InitGameState(
      {required final LobbyID lobbyID,
      required final List<UserID> ready}) = _$InitGameState;

  factory InitGameState.fromJson(Map<String, dynamic> json) =
      _$InitGameState.fromJson;

  @override
  LobbyID get lobbyID;
  List<UserID> get ready;
  @override
  @JsonKey(ignore: true)
  _$$InitGameStateCopyWith<_$InitGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayingGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$PlayingGameStateCopyWith(
          _$PlayingGameState value, $Res Function(_$PlayingGameState) then) =
      __$$PlayingGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyID lobbyID, int secondsLeft, String? question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
}

/// @nodoc
class __$$PlayingGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$PlayingGameState>
    implements _$$PlayingGameStateCopyWith<$Res> {
  __$$PlayingGameStateCopyWithImpl(
      _$PlayingGameState _value, $Res Function(_$PlayingGameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? secondsLeft = null,
    Object? question = freezed,
  }) {
    return _then(_$PlayingGameState(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
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
class _$PlayingGameState implements PlayingGameState {
  const _$PlayingGameState(
      {required this.lobbyID,
      required this.secondsLeft,
      required this.question,
      final String? $type})
      : $type = $type ?? 'playing';

  factory _$PlayingGameState.fromJson(Map<String, dynamic> json) =>
      _$$PlayingGameStateFromJson(json);

  @override
  final LobbyID lobbyID;
  @override
  final int secondsLeft;
// question is NOT null only for a presenter
  @override
  final String? question;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameState.playing(lobbyID: $lobbyID, secondsLeft: $secondsLeft, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, secondsLeft, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingGameStateCopyWith<_$PlayingGameState> get copyWith =>
      __$$PlayingGameStateCopyWithImpl<_$PlayingGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LobbyID lobbyID, List<UserID> ready) init,
    required TResult Function(
            LobbyID lobbyID, int secondsLeft, String? question)
        playing,
    required TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)
        checkingAnswer,
  }) {
    return playing(lobbyID, secondsLeft, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult? Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult? Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return playing?.call(lobbyID, secondsLeft, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, List<UserAnswer> answers, String question,
            String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(lobbyID, secondsLeft, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameState value) init,
    required TResult Function(PlayingGameState value) playing,
    required TResult Function(WaitingForAnswerGameState value) waitingForAnswer,
    required TResult Function(CheckingAnswerGameState value) checkingAnswer,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameState value)? init,
    TResult? Function(PlayingGameState value)? playing,
    TResult? Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameState value)? checkingAnswer,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameState value)? init,
    TResult Function(PlayingGameState value)? playing,
    TResult Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameState value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayingGameStateToJson(
      this,
    );
  }
}

abstract class PlayingGameState implements GameState {
  const factory PlayingGameState(
      {required final LobbyID lobbyID,
      required final int secondsLeft,
      required final String? question}) = _$PlayingGameState;

  factory PlayingGameState.fromJson(Map<String, dynamic> json) =
      _$PlayingGameState.fromJson;

  @override
  LobbyID get lobbyID;
  int get secondsLeft; // question is NOT null only for a presenter
  String? get question;
  @override
  @JsonKey(ignore: true)
  _$$PlayingGameStateCopyWith<_$PlayingGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaitingForAnswerGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$WaitingForAnswerGameStateCopyWith(
          _$WaitingForAnswerGameState value,
          $Res Function(_$WaitingForAnswerGameState) then) =
      __$$WaitingForAnswerGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyID lobbyID, List<UserID> hasAnswered, String? question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
}

/// @nodoc
class __$$WaitingForAnswerGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$WaitingForAnswerGameState>
    implements _$$WaitingForAnswerGameStateCopyWith<$Res> {
  __$$WaitingForAnswerGameStateCopyWithImpl(_$WaitingForAnswerGameState _value,
      $Res Function(_$WaitingForAnswerGameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? hasAnswered = null,
    Object? question = freezed,
  }) {
    return _then(_$WaitingForAnswerGameState(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
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
class _$WaitingForAnswerGameState implements WaitingForAnswerGameState {
  const _$WaitingForAnswerGameState(
      {required this.lobbyID,
      required final List<UserID> hasAnswered,
      required this.question,
      final String? $type})
      : _hasAnswered = hasAnswered,
        $type = $type ?? 'waitingForAnswer';

  factory _$WaitingForAnswerGameState.fromJson(Map<String, dynamic> json) =>
      _$$WaitingForAnswerGameStateFromJson(json);

  @override
  final LobbyID lobbyID;
  final List<UserID> _hasAnswered;
  @override
  List<UserID> get hasAnswered {
    if (_hasAnswered is EqualUnmodifiableListView) return _hasAnswered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hasAnswered);
  }

// question is NOT null only for a presenter
  @override
  final String? question;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameState.waitingForAnswer(lobbyID: $lobbyID, hasAnswered: $hasAnswered, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForAnswerGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            const DeepCollectionEquality()
                .equals(other._hasAnswered, _hasAnswered) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID,
      const DeepCollectionEquality().hash(_hasAnswered), question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForAnswerGameStateCopyWith<_$WaitingForAnswerGameState>
      get copyWith => __$$WaitingForAnswerGameStateCopyWithImpl<
          _$WaitingForAnswerGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LobbyID lobbyID, List<UserID> ready) init,
    required TResult Function(
            LobbyID lobbyID, int secondsLeft, String? question)
        playing,
    required TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)
        checkingAnswer,
  }) {
    return waitingForAnswer(lobbyID, hasAnswered, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult? Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult? Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return waitingForAnswer?.call(lobbyID, hasAnswered, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, List<UserAnswer> answers, String question,
            String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(lobbyID, hasAnswered, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameState value) init,
    required TResult Function(PlayingGameState value) playing,
    required TResult Function(WaitingForAnswerGameState value) waitingForAnswer,
    required TResult Function(CheckingAnswerGameState value) checkingAnswer,
  }) {
    return waitingForAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameState value)? init,
    TResult? Function(PlayingGameState value)? playing,
    TResult? Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameState value)? checkingAnswer,
  }) {
    return waitingForAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameState value)? init,
    TResult Function(PlayingGameState value)? playing,
    TResult Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameState value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitingForAnswerGameStateToJson(
      this,
    );
  }
}

abstract class WaitingForAnswerGameState implements GameState {
  const factory WaitingForAnswerGameState(
      {required final LobbyID lobbyID,
      required final List<UserID> hasAnswered,
      required final String? question}) = _$WaitingForAnswerGameState;

  factory WaitingForAnswerGameState.fromJson(Map<String, dynamic> json) =
      _$WaitingForAnswerGameState.fromJson;

  @override
  LobbyID get lobbyID;
  List<UserID> get hasAnswered; // question is NOT null only for a presenter
  String? get question;
  @override
  @JsonKey(ignore: true)
  _$$WaitingForAnswerGameStateCopyWith<_$WaitingForAnswerGameState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckingAnswerGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$CheckingAnswerGameStateCopyWith(_$CheckingAnswerGameState value,
          $Res Function(_$CheckingAnswerGameState) then) =
      __$$CheckingAnswerGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LobbyID lobbyID,
      List<UserAnswer> answers,
      String question,
      String rightAnswer});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
}

/// @nodoc
class __$$CheckingAnswerGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$CheckingAnswerGameState>
    implements _$$CheckingAnswerGameStateCopyWith<$Res> {
  __$$CheckingAnswerGameStateCopyWithImpl(_$CheckingAnswerGameState _value,
      $Res Function(_$CheckingAnswerGameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyID = null,
    Object? answers = null,
    Object? question = null,
    Object? rightAnswer = null,
  }) {
    return _then(_$CheckingAnswerGameState(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswer>,
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
class _$CheckingAnswerGameState implements CheckingAnswerGameState {
  const _$CheckingAnswerGameState(
      {required this.lobbyID,
      required final List<UserAnswer> answers,
      required this.question,
      required this.rightAnswer,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'checkingAnswer';

  factory _$CheckingAnswerGameState.fromJson(Map<String, dynamic> json) =>
      _$$CheckingAnswerGameStateFromJson(json);

  @override
  final LobbyID lobbyID;
  final List<UserAnswer> _answers;
  @override
  List<UserAnswer> get answers {
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
    return 'GameState.checkingAnswer(lobbyID: $lobbyID, answers: $answers, question: $question, rightAnswer: $rightAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingAnswerGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lobbyID,
      const DeepCollectionEquality().hash(_answers), question, rightAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckingAnswerGameStateCopyWith<_$CheckingAnswerGameState> get copyWith =>
      __$$CheckingAnswerGameStateCopyWithImpl<_$CheckingAnswerGameState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LobbyID lobbyID, List<UserID> ready) init,
    required TResult Function(
            LobbyID lobbyID, int secondsLeft, String? question)
        playing,
    required TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)
        checkingAnswer,
  }) {
    return checkingAnswer(lobbyID, answers, question, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult? Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult? Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, List<UserAnswer> answers,
            String question, String rightAnswer)?
        checkingAnswer,
  }) {
    return checkingAnswer?.call(lobbyID, answers, question, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, List<UserID> ready)? init,
    TResult Function(LobbyID lobbyID, int secondsLeft, String? question)?
        playing,
    TResult Function(
            LobbyID lobbyID, List<UserID> hasAnswered, String? question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, List<UserAnswer> answers, String question,
            String rightAnswer)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (checkingAnswer != null) {
      return checkingAnswer(lobbyID, answers, question, rightAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGameState value) init,
    required TResult Function(PlayingGameState value) playing,
    required TResult Function(WaitingForAnswerGameState value) waitingForAnswer,
    required TResult Function(CheckingAnswerGameState value) checkingAnswer,
  }) {
    return checkingAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGameState value)? init,
    TResult? Function(PlayingGameState value)? playing,
    TResult? Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult? Function(CheckingAnswerGameState value)? checkingAnswer,
  }) {
    return checkingAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGameState value)? init,
    TResult Function(PlayingGameState value)? playing,
    TResult Function(WaitingForAnswerGameState value)? waitingForAnswer,
    TResult Function(CheckingAnswerGameState value)? checkingAnswer,
    required TResult orElse(),
  }) {
    if (checkingAnswer != null) {
      return checkingAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckingAnswerGameStateToJson(
      this,
    );
  }
}

abstract class CheckingAnswerGameState implements GameState {
  const factory CheckingAnswerGameState(
      {required final LobbyID lobbyID,
      required final List<UserAnswer> answers,
      required final String question,
      required final String rightAnswer}) = _$CheckingAnswerGameState;

  factory CheckingAnswerGameState.fromJson(Map<String, dynamic> json) =
      _$CheckingAnswerGameState.fromJson;

  @override
  LobbyID get lobbyID;
  List<UserAnswer> get answers;
  String get question;
  String get rightAnswer;
  @override
  @JsonKey(ignore: true)
  _$$CheckingAnswerGameStateCopyWith<_$CheckingAnswerGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
