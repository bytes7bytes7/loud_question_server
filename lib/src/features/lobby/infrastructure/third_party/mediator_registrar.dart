import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class LobbyMediatorRegistrar {
  const LobbyMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<CreateLobbyCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<JoinLobbyCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetLobbiesQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<GetLobbyQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<ListenLobbyQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<GetSongQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<UploadSongCommandHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<CreateLobbyCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<JoinLobbyCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetLobbiesQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetLobbyQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<ListenLobbyQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetSongQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<UploadSongCommandValidator>()]),
      );
  }
}
