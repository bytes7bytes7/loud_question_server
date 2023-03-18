import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../user_answer_vm/user_answer_vm.dart';

part 'game_state_vm.freezed.dart';

part 'game_state_vm.g.dart';

@Freezed(unionKey: 'type')
class GameStateVM with _$GameStateVM {
  const factory GameStateVM.init({
    required LobbyID lobbyID,
    required UserID leaderID,
    required List<UserID> readyIDs,
  }) = InitGameStateVM;

  const factory GameStateVM.playing({
    required LobbyID lobbyID,
    required UserID leaderID,
    required int startedAtMSSinceEpoch,
    required int endsAfterSeconds,
    required String? question,
  }) = PlayingGameStateVM;

  const factory GameStateVM.waitingForAnswer({
    required LobbyID lobbyID,
    required UserID leaderID,
    required List<UserID> hasAnswered,
    required String? question,
  }) = WaitingForAnswerGameStateVM;

  const factory GameStateVM.checkingAnswer({
    required LobbyID lobbyID,
    required UserID leaderID,
    required List<UserAnswerVM> answers,
    required String question,
    required String rightAnswer,
  }) = CheckingAnswerGameStateVM;

  factory GameStateVM.fromJson(JsonMap json) => _$GameStateVMFromJson(json);
}
