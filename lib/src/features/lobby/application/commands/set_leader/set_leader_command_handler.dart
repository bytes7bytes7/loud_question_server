import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'set_leader_command.dart';

@singleton
class SetLeaderCommandHandler extends RequestHandler<
    Either<List<DetailedException>, SetLeaderResult>, SetLeaderCommand> {
  const SetLeaderCommandHandler({
    required LobbyRepository lobbyRepository,
  }) : _lobbyRepository = lobbyRepository;

  final LobbyRepository _lobbyRepository;

  @override
  FutureOr<Either<List<DetailedException>, SetLeaderResult>> handle(
    SetLeaderCommand request,
  ) async {
    final oldLobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (oldLobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    if (request.userID != oldLobby.creatorID) {
      return left(
        [const NoPermission()],
      );
    }

    if (oldLobby.creatorID != request.leaderID &&
        !oldLobby.guestIDs.contains(request.leaderID)) {
      return left(
        [const UserShouldJoinLobby()],
      );
    }

    if (oldLobby.leaderID == request.leaderID) {
      return left(
        [const UserAlreadyLeader()],
      );
    }

    final newLobby = oldLobby.copyWith(
      leaderID: request.leaderID,
    );

    await _lobbyRepository.update(lobby: newLobby);

    return right(
      SetLeaderResult(
        lobby: newLobby,
      ),
    );
  }
}
