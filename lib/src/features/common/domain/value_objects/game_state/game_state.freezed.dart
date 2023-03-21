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

/// @nodoc
mixin _$GameState {
  LobbyID get lobbyID => throw _privateConstructorUsedError;
  UserID get leaderID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> ready)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
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

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({LobbyID lobbyID, UserID leaderID});

  $LobbyIDCopyWith<$Res> get lobbyID;
  $UserIDCopyWith<$Res> get leaderID;
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
abstract class _$$InitGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$InitGameStateCopyWith(
          _$InitGameState value, $Res Function(_$InitGameState) then) =
      __$$InitGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyID lobbyID, UserID leaderID, List<UserID> ready});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
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
    Object? leaderID = null,
    Object? ready = null,
  }) {
    return _then(_$InitGameState(
      lobbyID: null == lobbyID
          ? _value.lobbyID
          : lobbyID // ignore: cast_nullable_to_non_nullable
              as LobbyID,
      leaderID: null == leaderID
          ? _value.leaderID
          : leaderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      ready: null == ready
          ? _value._ready
          : ready // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
    ));
  }
}

/// @nodoc

class _$InitGameState implements InitGameState {
  const _$InitGameState(
      {required this.lobbyID,
      required this.leaderID,
      required final List<UserID> ready})
      : _ready = ready;

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final List<UserID> _ready;
  @override
  List<UserID> get ready {
    if (_ready is EqualUnmodifiableListView) return _ready;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ready);
  }

  @override
  String toString() {
    return 'GameState.init(lobbyID: $lobbyID, leaderID: $leaderID, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality().equals(other._ready, _ready));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_ready));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGameStateCopyWith<_$InitGameState> get copyWith =>
      __$$InitGameStateCopyWithImpl<_$InitGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> ready)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        checkingAnswer,
  }) {
    return init(lobbyID, leaderID, ready);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
  }) {
    return init?.call(lobbyID, leaderID, ready);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(lobbyID, leaderID, ready);
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
}

abstract class InitGameState implements GameState {
  const factory InitGameState(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final List<UserID> ready}) = _$InitGameState;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
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
  $Res call(
      {LobbyID lobbyID,
      UserID leaderID,
      int startedAtMSSinceEpoch,
      int endsAfterSeconds,
      Question question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
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
    Object? leaderID = null,
    Object? startedAtMSSinceEpoch = null,
    Object? endsAfterSeconds = null,
    Object? question = null,
  }) {
    return _then(_$PlayingGameState(
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
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$PlayingGameState implements PlayingGameState {
  const _$PlayingGameState(
      {required this.lobbyID,
      required this.leaderID,
      required this.startedAtMSSinceEpoch,
      required this.endsAfterSeconds,
      required this.question});

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  @override
  final int startedAtMSSinceEpoch;
  @override
  final int endsAfterSeconds;
  @override
  final Question question;

  @override
  String toString() {
    return 'GameState.playing(lobbyID: $lobbyID, leaderID: $leaderID, startedAtMSSinceEpoch: $startedAtMSSinceEpoch, endsAfterSeconds: $endsAfterSeconds, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingGameState &&
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

  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      startedAtMSSinceEpoch, endsAfterSeconds, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingGameStateCopyWith<_$PlayingGameState> get copyWith =>
      __$$PlayingGameStateCopyWithImpl<_$PlayingGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> ready)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        checkingAnswer,
  }) {
    return playing(
        lobbyID, leaderID, startedAtMSSinceEpoch, endsAfterSeconds, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
  }) {
    return playing?.call(
        lobbyID, leaderID, startedAtMSSinceEpoch, endsAfterSeconds, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
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
}

abstract class PlayingGameState implements GameState {
  const factory PlayingGameState(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final int startedAtMSSinceEpoch,
      required final int endsAfterSeconds,
      required final Question question}) = _$PlayingGameState;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  int get startedAtMSSinceEpoch;
  int get endsAfterSeconds;
  Question get question;
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
  $Res call(
      {LobbyID lobbyID,
      UserID leaderID,
      Map<UserID, String> answers,
      Question question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
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
    Object? leaderID = null,
    Object? answers = null,
    Object? question = null,
  }) {
    return _then(_$WaitingForAnswerGameState(
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
              as Map<UserID, String>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$WaitingForAnswerGameState implements WaitingForAnswerGameState {
  const _$WaitingForAnswerGameState(
      {required this.lobbyID,
      required this.leaderID,
      required final Map<UserID, String> answers,
      required this.question})
      : _answers = answers;

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final Map<UserID, String> _answers;
  @override
  Map<UserID, String> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  final Question question;

  @override
  String toString() {
    return 'GameState.waitingForAnswer(lobbyID: $lobbyID, leaderID: $leaderID, answers: $answers, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForAnswerGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_answers), question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForAnswerGameStateCopyWith<_$WaitingForAnswerGameState>
      get copyWith => __$$WaitingForAnswerGameStateCopyWithImpl<
          _$WaitingForAnswerGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> ready)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        checkingAnswer,
  }) {
    return waitingForAnswer(lobbyID, leaderID, answers, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
  }) {
    return waitingForAnswer?.call(lobbyID, leaderID, answers, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(lobbyID, leaderID, answers, question);
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
}

abstract class WaitingForAnswerGameState implements GameState {
  const factory WaitingForAnswerGameState(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final Map<UserID, String> answers,
      required final Question question}) = _$WaitingForAnswerGameState;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  Map<UserID, String> get answers;
  Question get question;
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
      UserID leaderID,
      Map<UserID, String> answers,
      Question question});

  @override
  $LobbyIDCopyWith<$Res> get lobbyID;
  @override
  $UserIDCopyWith<$Res> get leaderID;
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
    Object? leaderID = null,
    Object? answers = null,
    Object? question = null,
  }) {
    return _then(_$CheckingAnswerGameState(
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
              as Map<UserID, String>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$CheckingAnswerGameState implements CheckingAnswerGameState {
  const _$CheckingAnswerGameState(
      {required this.lobbyID,
      required this.leaderID,
      required final Map<UserID, String> answers,
      required this.question})
      : _answers = answers;

  @override
  final LobbyID lobbyID;
  @override
  final UserID leaderID;
  final Map<UserID, String> _answers;
  @override
  Map<UserID, String> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  final Question question;

  @override
  String toString() {
    return 'GameState.checkingAnswer(lobbyID: $lobbyID, leaderID: $leaderID, answers: $answers, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingAnswerGameState &&
            (identical(other.lobbyID, lobbyID) || other.lobbyID == lobbyID) &&
            (identical(other.leaderID, leaderID) ||
                other.leaderID == leaderID) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lobbyID, leaderID,
      const DeepCollectionEquality().hash(_answers), question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckingAnswerGameStateCopyWith<_$CheckingAnswerGameState> get copyWith =>
      __$$CheckingAnswerGameStateCopyWithImpl<_$CheckingAnswerGameState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LobbyID lobbyID, UserID leaderID, List<UserID> ready)
        init,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)
        playing,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        waitingForAnswer,
    required TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)
        checkingAnswer,
  }) {
    return checkingAnswer(lobbyID, leaderID, answers, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult? Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
  }) {
    return checkingAnswer?.call(lobbyID, leaderID, answers, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LobbyID lobbyID, UserID leaderID, List<UserID> ready)?
        init,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            int startedAtMSSinceEpoch, int endsAfterSeconds, Question question)?
        playing,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        waitingForAnswer,
    TResult Function(LobbyID lobbyID, UserID leaderID,
            Map<UserID, String> answers, Question question)?
        checkingAnswer,
    required TResult orElse(),
  }) {
    if (checkingAnswer != null) {
      return checkingAnswer(lobbyID, leaderID, answers, question);
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
}

abstract class CheckingAnswerGameState implements GameState {
  const factory CheckingAnswerGameState(
      {required final LobbyID lobbyID,
      required final UserID leaderID,
      required final Map<UserID, String> answers,
      required final Question question}) = _$CheckingAnswerGameState;

  @override
  LobbyID get lobbyID;
  @override
  UserID get leaderID;
  Map<UserID, String> get answers;
  Question get question;
  @override
  @JsonKey(ignore: true)
  _$$CheckingAnswerGameStateCopyWith<_$CheckingAnswerGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
