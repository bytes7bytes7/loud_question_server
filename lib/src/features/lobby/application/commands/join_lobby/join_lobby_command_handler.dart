import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../../../common/application/services/hash_service.dart';
import '../../../domain/services/lobby_service.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'join_lobby_command.dart';

@singleton
class JoinLobbyCommandHandler extends RequestHandler<
    Either<List<DetailedException>, JoinLobbyResult>, JoinLobbyCommand> {
  const JoinLobbyCommandHandler({
    required LobbyService lobbyService,
    required UserLobbyActivityRepository userLobbyActivityRepository,
    required LobbyPasswordHashRepository lobbyPasswordHashRepository,
    required DateTimeProvider dateTimeProvider,
    required HashService hashService,
  })  : _lobbyService = lobbyService,
        _userLobbyActivityRepository = userLobbyActivityRepository,
        _lobbyPasswordHashRepository = lobbyPasswordHashRepository,
        _dateTimeProvider = dateTimeProvider,
        _hashService = hashService;

  final LobbyService _lobbyService;
  final UserLobbyActivityRepository _userLobbyActivityRepository;
  final LobbyPasswordHashRepository _lobbyPasswordHashRepository;
  final DateTimeProvider _dateTimeProvider;
  final HashService _hashService;

  @override
  FutureOr<Either<List<DetailedException>, JoinLobbyResult>> handle(
    JoinLobbyCommand request,
  ) async {
    final rightPassword = await _lobbyPasswordHashRepository
        .getPasswordHashByID(id: request.lobbyID);
    final lobby = await _lobbyService.get(id: request.lobbyID);

    if (rightPassword == null || lobby == null) {
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

    final alreadyJoint = lobby.creatorID == request.guestID ||
        lobby.guestIDs.contains(request.guestID);

    if (alreadyJoint) {
      return left(
        [const YouAlreadyJointLobby()],
      );
    }

    final updatedLobby = lobby.copyWith(
      guestIDs: List.from(lobby.guestIDs)..add(request.guestID),
    );

    final resultLobby = await _lobbyService.updateOrAdd(lobby: updatedLobby);

    await _userLobbyActivityRepository.update(
      userID: request.guestID,
      msSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
    );

    return right(
      JoinLobbyResult(
        lobby: resultLobby,
      ),
    );
  }
}
