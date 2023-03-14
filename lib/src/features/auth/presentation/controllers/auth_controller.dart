import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mediator;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'auth_controller.g.dart';

@injectable
class AuthController extends ApiController {
  static const path = '/auth/';

  const AuthController({
    required mediator.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mediator.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$AuthControllerRouter(this);

  @Route.post('/register')
  Future<Response> register(Request request) async {
    late final RegisterRequest registerRequest;
    try {
      registerRequest = await parseRequest<RegisterRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final connectionInfo = request.connectionInfo;
    final ip = connectionInfo.remoteAddress.address;

    final command = _mapster.map2(registerRequest, ip, To<RegisterCommand>());

    final authResult = await command.sendTo(_mediator);

    return authResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<AuthResponse>())),
    );
  }

  @Route.post('/log_in')
  Future<Response> logIn(Request request) async {
    late final LogInRequest logInRequest;
    try {
      logInRequest = await parseRequest<LogInRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final connectionInfo = request.connectionInfo;
    final ip = connectionInfo.remoteAddress.address;

    final query = _mapster.map2(logInRequest, ip, To<LogInQuery>());

    final authResult = await query.sendTo(_mediator);

    return authResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<AuthResponse>())),
    );
  }

  @Route.post('/log_out')
  Future<Response> logOut(Request request) async {
    late final LogOutRequest logOutRequest;
    try {
      logOutRequest = await parseRequest<LogOutRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final token = request.token;

    if (token == null) {
      return problem(
        [const NoTokenProvided()],
      );
    }

    final command = _mapster.map2(logOutRequest, token, To<LogOutCommand>());

    final logOutResult = await command.sendTo(_mediator);

    return logOutResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<LogOutResponse>())),
    );
  }

  @Route.post('/verify_token')
  Future<Response> verifyToken(Request request) async {
    late final VerifyTokenRequest verifyTokenRequest;
    try {
      verifyTokenRequest = await parseRequest<VerifyTokenRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final accessToken = request.token;

    if (accessToken == null) {
      return problem(
        [const NoTokenProvided()],
      );
    }

    final query =
        _mapster.map2(verifyTokenRequest, accessToken, To<VerifyTokenQuery>());

    final verifyTokenResult = await query.sendTo(_mediator);

    return verifyTokenResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<VerifyTokenResponse>())),
    );
  }

  @Route.post('/refresh_token')
  Future<Response> refreshToken(Request request) async {
    late final RefreshTokenRequest refreshTokenRequest;
    try {
      refreshTokenRequest = await parseRequest<RefreshTokenRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final connectionInfo = request.connectionInfo;
    final ip = connectionInfo.remoteAddress.address;

    final command =
        _mapster.map2(refreshTokenRequest, ip, To<RefreshTokenCommand>());

    final refreshTokenResult = await command.sendTo(_mediator);

    return refreshTokenResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<RefreshTokenResponse>())),
    );
  }
}
