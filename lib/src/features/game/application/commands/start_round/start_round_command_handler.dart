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
import 'start_round_command.dart';

const _endsAfterSeconds = 60;

@singleton
class StartRoundCommandHandler extends RequestHandler<
    Either<List<DetailedException>, StartRoundResult>, StartRoundCommand> {
  const StartRoundCommandHandler({
    required GameRepository gameRepository,
    required LobbyRepository lobbyRepository,
    required QuestionRepository questionRepository,
    required DateTimeRepository dateTimeRepository,
  })  : _gameRepository = gameRepository,
        _lobbyRepository = lobbyRepository,
        _questionRepository = questionRepository,
        _dateTimeRepository = dateTimeRepository;

  final GameRepository _gameRepository;
  final LobbyRepository _lobbyRepository;
  final QuestionRepository _questionRepository;
  final DateTimeRepository _dateTimeRepository;

  @override
  FutureOr<Either<List<DetailedException>, StartRoundResult>> handle(
    StartRoundCommand request,
  ) async {
    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    final hasPermission = lobby.creatorID == request.userID;

    if (!hasPermission) {
      return left(
        [const NoPermission()],
      );
    }

    final oldGameState = await _gameRepository.get(lobbyID: request.lobbyID);

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

    final resultGameState = GameState.playing(
      lobbyID: oldGameState.lobbyID,
      startedAtMSSinceEpoch: startedAtMSSinceEpoch,
      endsAfterSeconds: _endsAfterSeconds,
      question: question.content,
    );

    return right(
      StartRoundResult(
        gameState: resultGameState,
      ),
    );
  }
}
