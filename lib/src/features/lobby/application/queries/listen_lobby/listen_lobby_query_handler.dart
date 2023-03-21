import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../domain/services/lobby_service.dart';
import '../../common/common.dart';
import 'listen_lobby_query.dart';

@singleton
class ListenLobbyQueryHandler extends RequestHandler<
    Either<List<DetailedException>, ListenLobbyResult>, ListenLobbyQuery> {
  const ListenLobbyQueryHandler({
    required LobbyService lobbyService,
    required UserLobbyActivityRepository userLobbyActivityRepository,
    required DateTimeRepository dateTimeRepository,
  })  : _lobbyService = lobbyService,
        _userLobbyActivityRepository = userLobbyActivityRepository,
        _dateTimeRepository = dateTimeRepository;

  final LobbyService _lobbyService;
  final UserLobbyActivityRepository _userLobbyActivityRepository;
  final DateTimeRepository _dateTimeRepository;

  @override
  FutureOr<Either<List<DetailedException>, ListenLobbyResult>> handle(
    ListenLobbyQuery request,
  ) async {
    final lastEvent = _lobbyService.getLastEventByID(lobbyID: request.lobbyID);
    final lastRequestInMSSinceEpoch = await _userLobbyActivityRepository
        .lastRequestInMSSinceEpoch(userID: request.userID);

    if (lastRequestInMSSinceEpoch == null) {
      await _userLobbyActivityRepository.update(
        userID: request.userID,
        msSinceEpoch: _dateTimeRepository.now().millisecondsSinceEpoch,
      );
    }

    if (lastEvent != null) {
      if ((lastRequestInMSSinceEpoch ?? 0) < lastEvent.msSinceEpoch) {
        return right(
          ListenLobbyResult(
            lobby: lastEvent.lobby,
          ),
        );
      }
    }

    final stream = _lobbyService.eventsByID(request.lobbyID);

    final event = await stream.first;

    await _userLobbyActivityRepository.update(
      userID: request.userID,
      msSinceEpoch: _dateTimeRepository.now().millisecondsSinceEpoch,
    );

    return right(
      ListenLobbyResult(
        lobby: event.lobby,
      ),
    );
  }
}
