import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_lobby_query.dart';

@singleton
class GetLobbyQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetLobbyResult>, GetLobbyQuery> {
  const GetLobbyQueryHandler({
    required LobbyRepository lobbyRepository,
  }) : _lobbyRepository = lobbyRepository;

  final LobbyRepository _lobbyRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetLobbyResult>> handle(
    GetLobbyQuery request,
  ) async {
    final lobby = await _lobbyRepository.get(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    if (request.userID != lobby.creatorID &&
        !lobby.guestIDs.contains(request.userID)) {
      return left(
        [const YouShouldJoinLobby()],
      );
    }

    return right(
      GetLobbyResult(
        lobby: lobby,
      ),
    );
  }
}
