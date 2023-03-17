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
import 'give_answer_command.dart';

@singleton
class GiveAnswerCommandHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, GiveAnswerCommand> {
  const GiveAnswerCommandHandler({
    required LobbyRepository lobbyRepository,
    required GameRepository gameRepository,
    required DateTimeRepository dateTimeRepository,
  })  : _lobbyRepository = lobbyRepository,
        _gameRepository = gameRepository,
        _dateTimeRepository = dateTimeRepository;

  final LobbyRepository _lobbyRepository;
  final GameRepository _gameRepository;
  final DateTimeRepository _dateTimeRepository;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    GiveAnswerCommand request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    // TODO: add leader (leader read question)
    // TODO: make question null if user != leader

    final joint = lobby.creatorID == request.userID ||
        lobby.guestIDs.contains(request.userID);

    if (!joint) {
      return left(
        [const YouShouldJoinLobby()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

    if (oldGameState == null) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    if (oldGameState is! PlayingGameState &&
        oldGameState is! WaitingForAnswerGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    late GameState newGameState;
    if (oldGameState is PlayingGameState) {
      final endsAt = DateTime.fromMillisecondsSinceEpoch(
        oldGameState.startedAtMSSinceEpoch,
      )..add(Duration(seconds: oldGameState.endsAfterSeconds));

      final now = _dateTimeRepository.now();

      if (endsAt.isAfter(now)) {
        return left(
          [const UnavailableGameOperation()],
        );
      }

      newGameState = WaitingForAnswerGameState(
        lobbyID: oldGameState.lobbyID,
        hasAnswered: [request.userID],
        question: oldGameState.question,
      );
    } else if (oldGameState is WaitingForAnswerGameState) {
      final hasAnswered = List<UserID>.from(oldGameState.hasAnswered);

      if (hasAnswered.contains(request.userID)) {
        return left(
          [const YouAlreadyAnswered()],
        );
      }

      newGameState = oldGameState.copyWith(
        hasAnswered: hasAnswered..add(request.userID),
      );
    }

    await _gameRepository.update(gameState: newGameState);

    return right(
      GameStateResult(
        gameState: newGameState,
      ),
    );
  }
}
