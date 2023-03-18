import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'listen_state_query.dart';

@singleton
class ListenStateQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GameStateResult>, ListenStateQuery> {
  const ListenStateQueryHandler({
    required GameStateService gameStateService,
    required Mapster mapster,
  })  : _gameStateService = gameStateService,
        _mapster = mapster;

  final GameStateService _gameStateService;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GameStateResult>> handle(
    ListenStateQuery request,
  ) async {
    final lastEvent =
        _gameStateService.getLastEventByID(lobbyID: request.lobbyID);

    if (lastEvent != null) {
      if (request.lastRequestInMSSinceEpoch < lastEvent.msSinceEpoch) {
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
