import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../entities/question/question.dart';
import '../lobby_id/lobby_id.dart';
import '../user_id/user_id.dart';

part 'game_state.freezed.dart';

part 'game_state.g.dart';

part 'answers_json_converter.dart';

@Freezed(unionKey: 'type')
class GameState with _$GameState {
  const factory GameState.init({
    required LobbyID lobbyID,
    required UserID leaderID,
    required List<UserID> ready,
  }) = InitGameState;

  const factory GameState.playing({
    required LobbyID lobbyID,
    required UserID leaderID,
    required int startedAtMSSinceEpoch,
    required int endsAfterSeconds,
    required Question question,
  }) = PlayingGameState;

  const factory GameState.waitingForAnswer({
    required LobbyID lobbyID,
    required UserID leaderID,
    @AnswersJsonConverter() required Map<UserID, String> answers,
    required Question question,
  }) = WaitingForAnswerGameState;

  const factory GameState.checkingAnswer({
    required LobbyID lobbyID,
    required UserID leaderID,
    @AnswersJsonConverter() required Map<UserID, String> answers,
    required Question question,
  }) = CheckingAnswerGameState;

  factory GameState.fromJson(JsonMap json) => _$GameStateFromJson(json);
}
