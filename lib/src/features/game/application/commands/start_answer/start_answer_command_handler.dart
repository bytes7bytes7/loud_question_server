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
import '../../view_models/game_state_vm/game_state_vm.dart';
import 'start_answer_command.dart';

@singleton
class StartAnswerCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, StartAnswerCommand> {
  const StartAnswerCommandHandler({
    required GameStateService gameStateService,
    required LobbyRepository lobbyRepository,
    required DateTimeProvider dateTimeProvider,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _lobbyRepository = lobbyRepository,
        _dateTimeProvider = dateTimeProvider,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final LobbyRepository _lobbyRepository;
  final DateTimeProvider _dateTimeProvider;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    StartAnswerCommand request,
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

    final hasPermission = oldGameState.leaderID == request.userID;

    if (!hasPermission) {
      return left(
        [const NoPermission()],
      );
    }

    if (oldGameState is! PlayingGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final endsAt = DateTime.fromMillisecondsSinceEpoch(
      oldGameState.startedAtMSSinceEpoch,
    )
        .add(Duration(seconds: oldGameState.endsAfterSeconds))
        .millisecondsSinceEpoch;

    final now = _dateTimeProvider.now().millisecondsSinceEpoch;

    if (now < endsAt) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    // must specify `GameState` type for Mapster
    final GameState newGameState = WaitingForAnswerGameState(
      leaderID: oldGameState.leaderID,
      lobbyID: oldGameState.lobbyID,
      answers: {},
      question: oldGameState.question,
    );

    await _gameStateService.updateOrAdd(gameState: newGameState);

    await _userGameStateActivityRepository.update(
      userID: request.userID,
      msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
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
