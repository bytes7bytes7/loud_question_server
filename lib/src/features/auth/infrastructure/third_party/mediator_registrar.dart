import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class AuthMediatorRegistrar {
  const AuthMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<RegisterCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<LogInQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<LogOutCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<VerifyTokenQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<RefreshTokenCommandHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<RegisterCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<LogInQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<LogOutCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<VerifyTokenQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<RefreshTokenCommandValidator>()]),
      );
  }
}
