import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'set_not_ready_command.dart';

@singleton
class SetNotReadyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, SetNotReadyCommand> {
  const SetNotReadyCommandHandler({
    required GameRepository gameRepository,
    required LobbyRepository lobbyRepository,
  })  : _gameRepository = gameRepository,
        _lobbyRepository = lobbyRepository;

  final GameRepository _gameRepository;
  final LobbyRepository _lobbyRepository;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    SetNotReadyCommand request,
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

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      return left(
        [const YouAlreadyNotReady()],
      );
    } else if (oldGameState is CheckingAnswerGameState) {
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
    } else {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final resultGameState =
        await _gameRepository.update(gameState: newGameState);

    return right(
      GameStateResult(
        gameState: resultGameState,
      ),
    );
  }
}
