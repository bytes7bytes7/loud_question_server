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
import 'set_not_ready_command.dart';

@singleton
class SetNotReadyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, SetNotReadyCommand> {
  const SetNotReadyCommandHandler({
    required GameStateService gameStateService,
    required LobbyRepository lobbyRepository,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required DateTimeProvider dateTimeProvider,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _lobbyRepository = lobbyRepository,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _dateTimeProvider = dateTimeProvider,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final LobbyRepository _lobbyRepository;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final DateTimeProvider _dateTimeProvider;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    SetNotReadyCommand request,
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

    late GameState newGameState;
    if (oldGameState == null) {
      return left(
        [const YouAlreadyNotReady()],
      );
    } else if (oldGameState is InitGameState) {
      if (!oldGameState.ready.contains(request.userID)) {
        return left(
          [const YouAlreadyNotReady()],
        );
      }

      final ready = List<UserID>.from(oldGameState.ready)
        ..remove(request.userID);
      newGameState = oldGameState.copyWith(
        ready: ready,
      );
    } else if (oldGameState is CheckingAnswerGameState) {
      return left(
        [const YouAlreadyNotReady()],
      );
    } else {
      return left(
        [const UnavailableGameOperation()],
      );
    }

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
