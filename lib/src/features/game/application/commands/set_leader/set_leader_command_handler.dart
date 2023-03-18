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
import 'set_leader_command.dart';

@singleton
class SetLeaderCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, SetLeaderCommand> {
  const SetLeaderCommandHandler({
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
    SetLeaderCommand request,
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

    if (lobby.creatorID != request.leaderID &&
        !lobby.guestIDs.contains(request.leaderID)) {
      return left(
        [const UserShouldJoinLobby()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      newGameState = GameState.init(
        leaderID: request.leaderID,
        lobbyID: request.lobbyID,
        ready: [request.userID],
      );
    } else if (oldGameState is InitGameState) {
      if (oldGameState.leaderID == request.leaderID) {
        return left(
          [const UserAlreadyLeader()],
        );
      }

      newGameState = oldGameState.copyWith(
        leaderID: request.leaderID,
      );
    } else if (oldGameState is CheckingAnswerGameState) {
      newGameState = GameState.init(
        leaderID: request.leaderID,
        lobbyID: request.lobbyID,
        ready: [request.userID],
      );
    } else {
      return left(
        [const UnavailableGameOperation()],
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
