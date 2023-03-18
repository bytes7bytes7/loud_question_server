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
import 'get_state_query.dart';

@singleton
class GetStateQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, GetStateQuery> {
  const GetStateQueryHandler({
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
    GetStateQuery request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    if (request.userID != lobby.creatorID &&
        !lobby.guestIDs.contains(request.userID)) {
      return left(
        [const YouShouldJoinLobby()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      newGameState = GameState.init(
        lobbyID: request.lobbyID,
        leaderID: lobby.creatorID,
        ready: [],
      );

      await _gameRepository.update(gameState: newGameState);
    } else {
      newGameState = oldGameState;
    }

    final gameStateVM =
        _mapster.map2(newGameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
