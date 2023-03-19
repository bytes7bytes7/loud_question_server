import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class UserMediatorRegistrar {
  const UserMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<GetUserQueryHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetUserQueryValidator>()]),
      );
  }
}
