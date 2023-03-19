import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mediator;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/application/application.dart';
import '../../../common/presentation/controllers/controllers.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'user_controller.g.dart';

@injectable
class UserController extends ApiController {
  static const path = '/user/';

  const UserController({
    required mediator.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mediator.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$UserControllerRouter(this);

  @Route.get('/<userID>')
  Future<Response> getUser(Request request) async {
    late final GetUserRequest getUserRequest;
    try {
      getUserRequest = await parseRequest<GetUserRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final query = _mapster.map1(getUserRequest, To<GetUserQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => created(_mapster.map1(r, To<GetUserResponse>())),
    );
  }
}
