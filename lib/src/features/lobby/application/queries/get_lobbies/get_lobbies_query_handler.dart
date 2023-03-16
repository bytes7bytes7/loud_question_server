import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_lobbies_query.dart';

@singleton
class GetLobbiesQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetLobbiesResult>, GetLobbiesQuery> {
  const GetLobbiesQueryHandler({
    required LobbyRepository lobbyRepository,
  }) : _lobbyRepository = lobbyRepository;

  final LobbyRepository _lobbyRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetLobbiesResult>> handle(
    GetLobbiesQuery request,
  ) async {
    final lobbies =
        await _lobbyRepository.getAllByUserID(userID: request.userID);

    return right(
      GetLobbiesResult(
        lobbies: lobbies,
      ),
    );
  }
}
