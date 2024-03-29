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
      (r) => created(_mapster.map1(r, To<LobbyResponse>())),
    );
  }

  @Route.get('/all')
  Future<Response> getLobbies(Request request) async {
    late final GetLobbiesRequest getLobbiesRequest;
    try {
      getLobbiesRequest = await parseRequest<GetLobbiesRequest>(request);
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
        _mapster.map2(getLobbiesRequest, user.id, To<GetLobbiesQuery>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetLobbiesResponse>())),
    );
  }

  @Route.get('/song')
  Future<Response> getSong(Request request) async {
    late final GetSongRequest getSongRequest;
    try {
      getSongRequest = await parseRequest<GetSongRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final query = _mapster.map1(getSongRequest, To<GetSongQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetSongResponse>())),
    );
  }

  @Route.post('/song')
  Future<Response> uploadSong(Request request) async {
    late final UploadSongRequest uploadSongRequest;
    try {
      uploadSongRequest = await parseRequest<UploadSongRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final command = _mapster.map1(uploadSongRequest, To<UploadSongCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<LobbyResponse>())),
    );
  }

  @Route.get('/<lobbyID>')
  Future<Response> getLobby(Request request) async {
    late final GetLobbyRequest getLobbyRequest;
    try {
      getLobbyRequest = await parseRequest<GetLobbyRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final query = _mapster.map2(getLobbyRequest, user.id, To<GetLobbyQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<LobbyResponse>())),
    );
  }

  @Route.get('/<lobbyID>/listen')
  Future<Response> listenLobby(Request request) async {
    late final ListenLobbyRequest listenLobbyRequest;
    try {
      listenLobbyRequest = await parseRequest<ListenLobbyRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final query =
        _mapster.map2(listenLobbyRequest, user.id, To<ListenLobbyQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<LobbyResponse>())),
    );
  }

  @Route.post('/<lobbyID>/join')
  Future<Response> joinLobby(Request request) async {
    late final JoinLobbyRequest joinLobbyRequest;
    try {
      joinLobbyRequest = await parseRequest<JoinLobbyRequest>(request);
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
        _mapster.map2(joinLobbyRequest, user.id, To<JoinLobbyCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<LobbyResponse>())),
    );
  }
}
