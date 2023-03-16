import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'set_ready_command.dart';

@singleton
class SetReadyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, SetReadyResult>, SetReadyCommand> {
  const SetReadyCommandHandler({
    required GameRepository gameRepository,
  }) : _gameRepository = gameRepository;

  final GameRepository _gameRepository;

  @override
  FutureOr<Either<List<DetailedException>, SetReadyResult>> handle(
    SetReadyCommand request,
  ) async {
    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      newGameState = GameState.init(
        lobbyID: request.lobbyID,
        ready: [request.userID],
      );
    } else {
      if (oldGameState is InitGameState) {
        if (oldGameState.ready.contains(request.userID)) {
          return left(
            [const YouAreAlreadySetAsReady()],
          );
        }

        final ready = List<UserID>.from(oldGameState.ready)
          ..add(request.userID);
        newGameState = oldGameState.copyWith(
          ready: ready,
        );
      } else {
        return left(
          [const UnavailableGameOperation()],
        );
      }
    }

    final resultGameState =
        await _gameRepository.update(gameState: newGameState);

    return right(
      SetReadyResult(
        gameState: resultGameState,
      ),
    );
  }
}
