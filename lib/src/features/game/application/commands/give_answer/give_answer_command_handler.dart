import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
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
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameStateService = gameStateService,
        _dateTimeRepository = dateTimeRepository,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameStateService _gameStateService;
  final DateTimeRepository _dateTimeRepository;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GiveAnswerCommand request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

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

    if (oldGameState is! WaitingForAnswerGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final answers = Map.of(oldGameState.answers);

    if (answers.keys.contains(request.userID)) {
      return left(
        [const YouAlreadyAnswered()],
      );
    }

    // must specify `GameState` type for Mapster
    final GameState newGameState = oldGameState.copyWith(
      answers: answers..[request.userID] = request.answer,
    );

    await _gameStateService.updateOrAdd(gameState: newGameState);

    await _userGameStateActivityRepository.update(
      userID: request.userID,
      msSinceEpoch: _dateTimeRepository.now().millisecondsSinceEpoch,
    );

    final gameStateVM =
        _mapster.map2(newGameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
