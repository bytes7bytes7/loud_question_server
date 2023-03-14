import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/services/hash_service.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../services/jwt_token_service.dart';
import 'log_in_query.dart';

@singleton
class LogInQueryHandler extends RequestHandler<
    Either<List<DetailedException>, AuthResult>, LogInQuery> {
  const LogInQueryHandler({
    required JwtTokenService jwtTokenService,
    required HashService hashService,
    required UserRepository userRepository,
    required PasswordHashRepository passwordHashRepository,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _hashService = hashService,
        _userRepository = userRepository,
        _passwordHashRepository = passwordHashRepository,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final HashService _hashService;
  final UserRepository _userRepository;
  final PasswordHashRepository _passwordHashRepository;
  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, AuthResult>> handle(
    LogInQuery request,
  ) async {
    final user = await _userRepository.getByEmail(email: request.name);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left([const InvalidCredentials()]);
    }

    final rightPasswordHash =
        await _passwordHashRepository.getHashByID(userID: user.id);
    final currentPasswordHash = _hashService.hashUserPassword(request.password);

    if (currentPasswordHash != rightPasswordHash) {
      return left([const InvalidCredentials()]);
    }

    final token = _jwtTokenService.generate(user);

    await _tokenRepository.add(
      token: token,
      userID: user.id,
    );

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
