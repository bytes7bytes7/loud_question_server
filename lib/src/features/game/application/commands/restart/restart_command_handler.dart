import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'restart_command.dart';

@singleton
class RestartCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, RestartCommand> {
  const RestartCommandHandler({
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
    RestartCommand request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    if (request.userID != lobby.creatorID) {
      return left(
        [const NoPermission()],
      );
    }

    // TODO: cancel timer (playing timer - 60 seconds)

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      newGameState = InitGameState(
        lobbyID: lobby.id,
        leaderID: lobby.creatorID,
        ready: [],
      );
    } else {
      newGameState = InitGameState(
        lobbyID: oldGameState.lobbyID,
        leaderID: oldGameState.leaderID,
        ready: [],
      );
    }

    await _gameRepository.update(gameState: newGameState);

    final gameStateVM =
        _mapster.map2(newGameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
