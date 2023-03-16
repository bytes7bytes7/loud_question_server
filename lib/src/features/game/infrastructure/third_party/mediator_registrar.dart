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

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SetReadyCommandValidator>()]),
      );
  }
}
