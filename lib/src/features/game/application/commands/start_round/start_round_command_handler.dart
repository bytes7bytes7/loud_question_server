import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/view_models.dart';
import 'start_round_command.dart';

const _endsAfterSeconds = 60;

@singleton
class StartRoundCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, StartRoundCommand> {
  const StartRoundCommandHandler({
    required GameStateService gameStateService,
    required LobbyRepository lobbyRepository,
    required QuestionRepository questionRepository,
    required DateTimeRepository dateTimeRepository,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _lobbyRepository = lobbyRepository,
        _questionRepository = questionRepository,
        _dateTimeRepository = dateTimeRepository,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final LobbyRepository _lobbyRepository;
  final QuestionRepository _questionRepository;
  final DateTimeRepository _dateTimeRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    StartRoundCommand request,
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

    final hasPermission = lobby.creatorID == request.userID;

    if (!hasPermission) {
      return left(
        [const NoPermission()],
      );
    }

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

    if (oldGameState == null) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    if (oldGameState is! InitGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final participants = [lobby.creatorID, ...lobby.guestIDs];
    final ready = List<UserID>.from(oldGameState.ready);

    for (final p in participants) {
      if (!ready.remove(p)) {
        return left(
          [const NotAllPlayersReady()],
        );
      }
    }

    final question = await _questionRepository.getRandom();
    final startedAtMSSinceEpoch =
        _dateTimeRepository.now().millisecondsSinceEpoch;

    final newGameState = GameState.playing(
      leaderID: oldGameState.leaderID,
      lobbyID: oldGameState.lobbyID,
      startedAtMSSinceEpoch: startedAtMSSinceEpoch,
      endsAfterSeconds: _endsAfterSeconds,
      question: question,
    );

    unawaited(_gameStateService.update(gameState: newGameState));

    final gameStateVM =
        _mapster.map2(newGameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
