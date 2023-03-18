import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/view_models/view_models.dart';
import '../../domain/domain.dart';

class GameStateToGameStateVMMapper
    extends TwoSourcesMapper<GameState, UserID, GameStateVM> {
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
        question: _userID == state.leaderID ? state.question.content : null,
      );
    }

    if (state is WaitingForAnswerGameState) {
      return GameStateVM.waitingForAnswer(
        lobbyID: state.lobbyID,
        leaderID: state.leaderID,
        hasAnswered: state.answers.entries.map((e) => e.key).toList(),
        question: _userID == state.leaderID ? state.question.content : null,
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

  GameState get _state => source1;

  UserID get _userID => source2;
}
