import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'get_state_query.dart';

@singleton
class GetStateQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, GetStateQuery> {
  const GetStateQueryHandler({
    required LobbyRepository lobbyRepository,
    required GameStateService gameStateService,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required DateTimeRepository dateTimeRepository,
    required Mapster mapster,
  })  : _lobbyRepository = lobbyRepository,
        _gameStateService = gameStateService,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _dateTimeRepository = dateTimeRepository,
        _mapster = mapster;

  final LobbyRepository _lobbyRepository;
  final GameStateService _gameStateService;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final DateTimeRepository _dateTimeRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GetStateQuery request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

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

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      newGameState = GameState.init(
        lobbyID: request.lobbyID,
        leaderID: lobby.creatorID,
        ready: [],
      );

      await _gameStateService.updateOrAdd(gameState: newGameState);
    } else {
      newGameState = oldGameState;
    }

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
