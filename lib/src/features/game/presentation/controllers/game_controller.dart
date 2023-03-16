import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mediator;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/extensions/extensions.dart';
import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/presentation/controllers/api_controller.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'game_controller.g.dart';

@injectable
class GameController extends ApiController {
  static const path = '/game/';

  const GameController({
    required mediator.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mediator.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$GameControllerRouter(this);

  // getState

  @Route.post('/ready')
  Future<Response> setReady(Request request) async {
    late final SetReadyRequest setReadyRequest;
    try {
      setReadyRequest = await parseRequest<SetReadyRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final command =
        _mapster.map2(setReadyRequest, user.id, To<SetReadyCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<SetReadyResponse>())),
    );
  }

// set no ready

// start

// terminate

// give answer

// get answer
}
