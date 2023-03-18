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
    required GameStateService gameStateService,
    required DateTimeRepository dateTimeRepository,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameStateService = gameStateService,
        _dateTimeRepository = dateTimeRepository,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameStateService _gameStateService;
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

    final joint = lobby.creatorID == request.userID ||
        lobby.guestIDs.contains(request.userID);

    if (!joint) {
      return left(
        [const YouShouldJoinLobby()],
      );
    }

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

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
      )
          .add(Duration(seconds: oldGameState.endsAfterSeconds))
          .millisecondsSinceEpoch;

      final now = _dateTimeRepository.now().millisecondsSinceEpoch;

      if (now < endsAt) {
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

    await _gameStateService.update(gameState: newGameState);

    final gameStateVM =
        _mapster.map2(newGameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
