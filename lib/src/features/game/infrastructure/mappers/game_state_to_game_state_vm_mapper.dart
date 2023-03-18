import 'package:mapster/mapster.dart';

import '../../application/view_models/view_models.dart';
import '../../domain/domain.dart';

class GameStateToGameStateVMMapper
    extends OneSourceMapper<GameState, GameStateVM> {
  GameStateToGameStateVMMapper(super.input);

  @override
  GameStateVM map() {
    final state = _state;

    if (state is InitGameState) {
      return GameStateVM.init(
        lobbyID: state.lobbyID,
        leaderID: state.leaderID,
        readyIDs: state.ready,
      );
    }

    if (state is PlayingGameState) {
      return GameStateVM.playing(
        lobbyID: state.lobbyID,
        leaderID: state.leaderID,
        startedAtMSSinceEpoch: state.startedAtMSSinceEpoch,
        endsAfterSeconds: state.endsAfterSeconds,
        // TODO:
        question: state.question.content,
      );
    }

    if (state is WaitingForAnswerGameState) {
      return GameStateVM.waitingForAnswer(
        lobbyID: state.lobbyID,
        leaderID: state.leaderID,
        hasAnswered: state.answers.entries.map((e) => e.key).toList(),
        // TODO:
        question: state.question.content,
      );
    }

    if (state is CheckingAnswerGameState) {
      return GameStateVM.checkingAnswer(
        lobbyID: state.lobbyID,
        leaderID: state.leaderID,
        answers: state.answers.entries
            .map(
              (e) => UserAnswerVM(
                userID: e.key,
                answer: e.value,
              ),
            )
            .toList(),
        question: state.question.content,
        rightAnswer: state.question.answer,
      );
    }

    throw Exception('Can not map gameState of type ${state.runtimeType}');
  }

  GameState get _state => source;
}
