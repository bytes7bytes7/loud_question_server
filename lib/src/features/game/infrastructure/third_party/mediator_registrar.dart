import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class GameMediatorRegistrar {
  const GameMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<SetReadyCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<SetNotReadyCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<StartRoundCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GiveAnswerCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<SetLeaderCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetAnswerCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<RestartCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetStateQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<ListenStateQueryHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SetReadyCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SetReadyCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<StartRoundCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GiveAnswerCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SetLeaderCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetAnswerCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<RestartCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetStateQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<ListenStateQueryValidator>()]),
      );
  }
}
