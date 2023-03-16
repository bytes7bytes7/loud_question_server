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
import 'set_not_ready_command.dart';

@singleton
class SetNotReadyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, SetNotReadyResult>, SetNotReadyCommand> {
  const SetNotReadyCommandHandler({
    required GameRepository gameRepository,
  }) : _gameRepository = gameRepository;

  final GameRepository _gameRepository;

  @override
  FutureOr<Either<List<DetailedException>, SetNotReadyResult>> handle(
    SetNotReadyCommand request,
  ) async {
    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    late GameState newGameState;
    if (oldGameState == null) {
      return left(
        [const YouAlreadyNotReady()],
      );
    } else {
      if (oldGameState is InitGameState) {
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
    }

    final resultGameState =
        await _gameRepository.update(gameState: newGameState);

    return right(
      SetNotReadyResult(
        gameState: resultGameState,
      ),
    );
  }
}
