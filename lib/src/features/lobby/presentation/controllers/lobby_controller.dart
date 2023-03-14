import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mediator;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../../common/application/application.dart';
import '../../../common/presentation/controllers/controllers.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'lobby_controller.g.dart';

@injectable
class LobbyController extends ApiController {
  static const path = '/lobby/';

  const LobbyController({
    required mediator.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mediator.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$LobbyControllerRouter(this);

  @Route.post('/new')
  Future<Response> createLobby(Request request) async {
    late final CreateLobbyRequest createLobbyRequest;
    try {
      createLobbyRequest = await parseRequest<CreateLobbyRequest>(request);
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
        _mapster.map2(createLobbyRequest, user.id, To<CreateLobbyCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<CreateLobbyResponse>())),
    );
  }
}
