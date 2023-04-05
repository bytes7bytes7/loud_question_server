import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/services/hash_service.dart';
import '../../common/common.dart';
import 'create_lobby_command.dart';

@singleton
class CreateLobbyCommandHandler extends RequestHandler<CreateLobbyCommand,
    Either<List<DetailedException>, LobbyResult>> {
  const CreateLobbyCommandHandler({
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
  FutureOr<Either<List<DetailedException>, LobbyResult>> handle(
    CreateLobbyCommand request,
  ) async {
    final passwordHash = _hashService.hashLobbyPassword(request.password);
    final lobby = await _lobbyRepository.create(creatorID: request.creatorID);
    await _lobbyPasswordHashRepository.setOrUpdate(
      id: lobby.id,
      passwordHash: passwordHash,
    );

    return right(LobbyResult(lobby: lobby));
  }
}
