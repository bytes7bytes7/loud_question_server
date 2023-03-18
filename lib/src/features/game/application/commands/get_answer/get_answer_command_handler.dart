import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/view_models.dart';
import 'get_answer_command.dart';

@singleton
class GetAnswerCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, GetAnswerCommand> {
  const GetAnswerCommandHandler({
    required LobbyRepository lobbyRepository,
    required GameRepository gameRepository,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameRepository = gameRepository,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameRepository _gameRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GetAnswerCommand request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    if (oldGameState == null) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    if (request.userID != oldGameState.leaderID) {
      return left(
        [const NoPermission()],
      );
    }

    late GameState newGameState;
    if (oldGameState is WaitingForAnswerGameState) {
      if (oldGameState.answers.length != (lobby.guestIDs.length + 1)) {
        return left(
          [const NotAllPlayersAnswered()],
        );
      }

      newGameState = GameState.checkingAnswer(
        lobbyID: oldGameState.lobbyID,
        leaderID: oldGameState.leaderID,
        question: oldGameState.question,
        answers: oldGameState.answers,
      );

      await _gameRepository.update(gameState: newGameState);
    } else {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final gameStateVM = _mapster.map1(newGameState, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
