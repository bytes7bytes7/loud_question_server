import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/view_models.dart';
import 'get_answer_command.dart';

@singleton
class GetAnswerCommandHandler extends RequestHandler<GetAnswerCommand,
    Either<List<DetailedException>, GameStateResult>> {
  const GetAnswerCommandHandler({
    required LobbyRepository lobbyRepository,
    required GameStateService gameStateService,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required DateTimeProvider dateTimeProvider,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameStateService = gameStateService,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _dateTimeProvider = dateTimeProvider,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameStateService _gameStateService;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final DateTimeProvider _dateTimeProvider;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GetAnswerCommand request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

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

      unawaited(_gameStateService.updateOrAdd(gameState: newGameState));
    } else {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    unawaited(
      _userGameStateActivityRepository.update(
        userID: request.userID,
        msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      ),
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
