import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../user_answer/user_answer.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@Freezed(
  unionKey: 'type',
)
class GameState with _$GameState {
  const factory GameState.init({
    required LobbyID lobbyID,
    required List<UserID> ready,
  }) = InitGameState;

  const factory GameState.playing({
    required LobbyID lobbyID,
    required int startedAtMSSinceEpoch,
    required int endsAfterSeconds,
    // question is NOT null only for a presenter
    required String? question,
  }) = PlayingGameState;

  const factory GameState.waitingForAnswer({
    required LobbyID lobbyID,
    required List<UserID> hasAnswered,
    // question is NOT null only for a presenter
    required String? question,
  }) = WaitingForAnswerGameState;

  const factory GameState.checkingAnswer({
    required LobbyID lobbyID,
    required List<UserAnswer> answers,
    required String question,
    required String rightAnswer,
  }) = CheckingAnswerGameState;

  factory GameState.fromJson(JsonMap json) => _$GameStateFromJson(json);
}
