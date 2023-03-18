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
import 'give_answer_command.dart';

@singleton
class GiveAnswerCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, GiveAnswerCommand> {
  const GiveAnswerCommandHandler({
    required LobbyRepository lobbyRepository,
    required GameRepository gameRepository,
    required DateTimeRepository dateTimeRepository,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameRepository = gameRepository,
        _dateTimeRepository = dateTimeRepository,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameRepository _gameRepository;
  final DateTimeRepository _dateTimeRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GiveAnswerCommand request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    // TODO: add leader (leader read question)
    // TODO: make question null if user != leader

    final joint = lobby.creatorID == request.userID ||
        lobby.guestIDs.contains(request.userID);

    if (!joint) {
      return left(
        [const YouShouldJoinLobby()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    if (oldGameState == null) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    if (oldGameState is! PlayingGameState &&
        oldGameState is! WaitingForAnswerGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    late GameState newGameState;
    if (oldGameState is PlayingGameState) {
      final endsAt = DateTime.fromMillisecondsSinceEpoch(
        oldGameState.startedAtMSSinceEpoch,
      )..add(Duration(seconds: oldGameState.endsAfterSeconds));

      final now = _dateTimeRepository.now();

      if (endsAt.isAfter(now)) {
        return left(
          [const UnavailableGameOperation()],
        );
      }

      newGameState = WaitingForAnswerGameState(
        leaderID: oldGameState.leaderID,
        lobbyID: oldGameState.lobbyID,
        answers: {
          request.userID: request.answer,
        },
        question: oldGameState.question,
      );
    } else if (oldGameState is WaitingForAnswerGameState) {
      final answers = Map.of(oldGameState.answers);

      if (answers.keys.contains(request.userID)) {
        return left(
          [const YouAlreadyAnswered()],
        );
      }

      newGameState = oldGameState.copyWith(
        answers: answers..[request.userID] = request.answer,
      );
    }

    await _gameRepository.update(gameState: newGameState);

    final gameStateVM = _mapster.map1(newGameState, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
