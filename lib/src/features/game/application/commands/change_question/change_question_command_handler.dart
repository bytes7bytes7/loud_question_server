import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/view_models.dart';
import 'change_question_command.dart';

@singleton
class ChangeQuestionCommandHandler extends RequestHandler<ChangeQuestionCommand,
    Either<List<DetailedException>, GameStateResult>> {
  const ChangeQuestionCommandHandler({
    required GameStateService gameStateService,
    required LobbyRepository lobbyRepository,
    required QuestionRepository questionRepository,
    required DateTimeProvider dateTimeProvider,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _lobbyRepository = lobbyRepository,
        _questionRepository = questionRepository,
        _dateTimeProvider = dateTimeProvider,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final LobbyRepository _lobbyRepository;
  final QuestionRepository _questionRepository;
  final DateTimeProvider _dateTimeProvider;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    ChangeQuestionCommand request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

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

    final oldGameState = await _gameStateService.get(lobbyID: request.lobbyID);

    if (oldGameState == null) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    final hasPermission = oldGameState.leaderID == request.userID;

    if (!hasPermission) {
      return left(
        [const NoPermission()],
      );
    }

    if (oldGameState is! PlayingGameState) {
      return left(
        [const UnavailableGameOperation()],
      );
    }

    late Question question;
    do {
      question = await _questionRepository.getRandom();
    } while (question.id == oldGameState.question.id);

    final startedAtMSSinceEpoch =
        _dateTimeProvider.now().millisecondsSinceEpoch;

    // must specify `GameState` type for Mapster
    final GameState newGameState = oldGameState.copyWith(
      startedAtMSSinceEpoch: startedAtMSSinceEpoch,
      question: question,
    );

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
