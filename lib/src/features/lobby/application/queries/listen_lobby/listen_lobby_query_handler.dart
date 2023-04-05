import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../../domain/services/lobby_service.dart';
import '../../common/common.dart';
import 'listen_lobby_query.dart';

@singleton
class ListenLobbyQueryHandler extends RequestHandler<ListenLobbyQuery,
    Either<List<DetailedException>, LobbyResult>> {
  const ListenLobbyQueryHandler({
    required LobbyService lobbyService,
    required UserLobbyActivityRepository userLobbyActivityRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _lobbyService = lobbyService,
        _userLobbyActivityRepository = userLobbyActivityRepository,
        _dateTimeProvider = dateTimeProvider;

  final LobbyService _lobbyService;
  final UserLobbyActivityRepository _userLobbyActivityRepository;
  final DateTimeProvider _dateTimeProvider;

  @override
  FutureOr<Either<List<DetailedException>, LobbyResult>> handle(
    ListenLobbyQuery request,
  ) async {
    final lastEvent = _lobbyService.getLastEventByID(lobbyID: request.lobbyID);
    final lastRequestInMSSinceEpoch = await _userLobbyActivityRepository
        .lastRequestInMSSinceEpoch(userID: request.userID);

    if (lastRequestInMSSinceEpoch == null) {
      unawaited(
        _userLobbyActivityRepository.update(
          userID: request.userID,
          msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
        ),
      );
    }

    if (lastEvent != null) {
      if ((lastRequestInMSSinceEpoch ?? 0) < lastEvent.msSinceEpoch) {
        return right(
          LobbyResult(
            lobby: lastEvent.lobby,
          ),
        );
      }
    }

    final stream = _lobbyService.eventsByID(request.lobbyID);

    final event = await stream.first;

    unawaited(
      _userLobbyActivityRepository.update(
        userID: request.userID,
        msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      ),
    );

    return right(
      LobbyResult(
        lobby: event.lobby,
      ),
    );
  }
}
