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
    required EndUserRepository endUserRepository,
    required PasswordHashRepository passwordHashRepository,
    required TokenRepository tokenRepository,
    required DateTimeRepository dateTimeRepository,
  })  : _jwtTokenService = jwtTokenService,
        _hashService = hashService,
        _endUserRepository = endUserRepository,
        _passwordHashRepository = passwordHashRepository,
        _tokenRepository = tokenRepository,
        _dateTimeRepository = dateTimeRepository;

  final JwtTokenService _jwtTokenService;
  final HashService _hashService;
  final EndUserRepository _endUserRepository;
  final PasswordHashRepository _passwordHashRepository;
  final TokenRepository _tokenRepository;
  final DateTimeRepository _dateTimeRepository;

  @override
  FutureOr<Either<List<DetailedException>, AuthResult>> handle(
    LogInQuery request,
  ) async {
    final user = await _endUserRepository.getByEmail(email: request.email);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left([const InvalidCredentials()]);
    }

    final rightPasswordHash =
        await _passwordHashRepository.getHashByID(userID: user.id);
    final currentPasswordHash = _hashService.hashPassword(request.password);

    if (currentPasswordHash != rightPasswordHash) {
      return left([const InvalidCredentials()]);
    }

    final tokenPair = _jwtTokenService.generate(user);

    await _tokenRepository.addOrUpdate(
      tokenPair: tokenPair,
      userID: user.id,
      deviceInfo: request.deviceInfo,
      ip: request.ip,
      createdAt: _dateTimeRepository.now(),
    );

    return right(
      AuthResult(
        user: user,
        accessToken: tokenPair.access,
        refreshToken: tokenPair.refresh,
      ),
    );
  }
}
