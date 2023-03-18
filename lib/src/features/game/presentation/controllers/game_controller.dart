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

  @Route.get('/<lobbyID>/state')
  Future<Response> getState(Request request) async {
    late final GetStateRequest getStateRequest;
    try {
      getStateRequest = await parseRequest<GetStateRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final query = _mapster.map2(getStateRequest, user.id, To<GetStateQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  /// Long polling
  // @Route.get('/<lobbyID>/listen_state')
  // Future<Response> listenState(Request request) async {}

  @Route.post('/<lobbyID>/ready')
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
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.post('/<lobbyID>/not_ready')
  Future<Response> setNotReady(Request request) async {
    late final SetNotReadyRequest setNotReadyRequest;
    try {
      setNotReadyRequest = await parseRequest<SetNotReadyRequest>(request);
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
        _mapster.map2(setNotReadyRequest, user.id, To<SetNotReadyCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.post('/<lobbyID>/start')
  Future<Response> start(Request request) async {
    late final StartRoundRequest startRoundRequest;
    try {
      startRoundRequest = await parseRequest<StartRoundRequest>(request);
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
        _mapster.map2(startRoundRequest, user.id, To<StartRoundCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.post('/<lobbyID>/give_answer')
  Future<Response> giveAnswer(Request request) async {
    late final GiveAnswerRequest giveAnswerRequest;
    try {
      giveAnswerRequest = await parseRequest<GiveAnswerRequest>(request);
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
        _mapster.map2(giveAnswerRequest, user.id, To<GiveAnswerCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.post('/<lobbyID>/set_leader')
  Future<Response> setLeader(Request request) async {
    late final SetLeaderRequest setLeaderRequest;
    try {
      setLeaderRequest = await parseRequest<SetLeaderRequest>(request);
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
        _mapster.map2(setLeaderRequest, user.id, To<SetLeaderCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.get('/<lobbyID>/get_answer')
  Future<Response> getAnswer(Request request) async {
    late final GetAnswerRequest getAnswerRequest;
    try {
      getAnswerRequest = await parseRequest<GetAnswerRequest>(request);
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
        _mapster.map2(getAnswerRequest, user.id, To<GetAnswerCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }

  @Route.post('/<lobbyID>/restart')
  Future<Response> restart(Request request) async {
    late final RestartRequest restartRequest;
    try {
      restartRequest = await parseRequest<RestartRequest>(request);
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
        _mapster.map2(restartRequest, user.id, To<RestartCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GameStateResponse>())),
    );
  }
}
