import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/services/hash_service.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'join_lobby_command.dart';

@singleton
class JoinLobbyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, JoinLobbyResult>, JoinLobbyCommand> {
  const JoinLobbyCommandHandler({
    required LobbyRepository lobbyRepository,
    required LobbyPasswordHashRepository lobbyPasswordHashRepository,
    required HashService hashService,
  })  : _lobbyRepository = lobbyRepository,
        _lobbyPasswordHashRepository = lobbyPasswordHashRepository,
        _hashService = hashService;

  final LobbyRepository _lobbyRepository;
  final LobbyPasswordHashRepository _lobbyPasswordHashRepository;
  final HashService _hashService;

  @override
  FutureOr<Either<List<DetailedException>, JoinLobbyResult>> handle(
    JoinLobbyCommand request,
  ) async {
    final rightPassword = await _lobbyPasswordHashRepository
        .getPasswordHashByID(id: request.lobbyID);

    if (rightPassword == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    final currentPassword = _hashService.hashLobbyPassword(request.password);

    if (currentPassword != rightPassword) {
      return left(
        [const WrongLobbyPassword()],
      );
    }

    final lobby = await _lobbyRepository.getByID(id: request.lobbyID);

    if (lobby == null) {
      return left(
        [const LobbyDoesNotExist()],
      );
    }

    final alreadyJoint = lobby.creatorID == request.guestID ||
        lobby.guests.contains(request.guestID);

    if (alreadyJoint) {
      return left(
        [const AlreadyJointLobby()],
      );
    }

    final updatedLobby = lobby.copyWith(
      guests: List.from(lobby.guests)..add(request.guestID),
    );

    final resultLobby = await _lobbyRepository.update(lobby: updatedLobby);

    if (resultLobby == null) {
      return left(
        [const UnknownLobbyError()],
      );
    }

    return right(
      JoinLobbyResult(
        lobby: resultLobby,
      ),
    );
  }
}
