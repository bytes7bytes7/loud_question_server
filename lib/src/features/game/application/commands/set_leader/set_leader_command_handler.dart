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
import 'set_leader_command.dart';

@singleton
class SetLeaderCommandHandler extends RequestHandler<SetLeaderCommand,
    Either<List<DetailedException>, GameStateResult>> {
  const SetLeaderCommandHandler({
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
    SetLeaderCommand request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

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

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

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

    unawaited(_gameStateService.updateOrAdd(gameState: newGameState));

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
