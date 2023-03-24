import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'listen_state_query.dart';

@singleton
class ListenStateQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, ListenStateQuery> {
  const ListenStateQueryHandler({
    required GameStateService gameStateService,
    required UserGameStateActivityRepository userGameStateActivityRepository,
    required DateTimeProvider dateTimeProvider,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _userGameStateActivityRepository = userGameStateActivityRepository,
        _dateTimeProvider = dateTimeProvider,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final UserGameStateActivityRepository _userGameStateActivityRepository;
  final DateTimeProvider _dateTimeProvider;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    ListenStateQuery request,
  ) async {
    final lastEvent =
        _gameStateService.getLastEventByID(lobbyID: request.lobbyID);
    final lastRequestInMSSinceEpoch = await _userGameStateActivityRepository
        .lastRequestInMSSinceEpoch(userID: request.userID);

    if (lastRequestInMSSinceEpoch == null) {
      await _userGameStateActivityRepository.update(
        userID: request.userID,
        msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      );
    }

    if (lastEvent != null) {
      if ((lastRequestInMSSinceEpoch ?? 0) < lastEvent.msSinceEpoch) {
        final gameStateVM = _mapster.map2(
          lastEvent.gameState,
          request.userID,
          To<GameStateVM>(),
        );

        return right(
          GameStateResult(
            gameState: gameStateVM,
          ),
        );
      }
    }

    final stream = _gameStateService.eventsByID(request.lobbyID);

    final event = await stream.first;

    await _userGameStateActivityRepository.update(
      userID: request.userID,
      msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
    );

    final gameState = event.gameState;

    final gameStateVM =
        _mapster.map2(gameState, request.userID, To<GameStateVM>());

    return right(
      GameStateResult(
        gameState: gameStateVM,
      ),
    );
  }
}
