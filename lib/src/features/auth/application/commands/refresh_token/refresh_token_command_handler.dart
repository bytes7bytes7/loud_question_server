import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../services/jwt_token_service.dart';
import 'refresh_token_command.dart';

@singleton
class RefreshTokenCommandHandler extends RequestHandler<
    Either<List<DetailedException>, RefreshTokenResult>, RefreshTokenCommand> {
  const RefreshTokenCommandHandler({
    required JwtTokenService jwtTokenService,
    required TokenRepository tokenRepository,
    required EndUserRepository endUserRepository,
    required DateTimeRepository dateTimeRepository,
  })  : _jwtTokenService = jwtTokenService,
        _tokenRepository = tokenRepository,
        _endUserRepository = endUserRepository,
        _dateTimeRepository = dateTimeRepository;

  final JwtTokenService _jwtTokenService;
  final TokenRepository _tokenRepository;
  final EndUserRepository _endUserRepository;
  final DateTimeRepository _dateTimeRepository;

  @override
  FutureOr<Either<List<DetailedException>, RefreshTokenResult>> handle(
    RefreshTokenCommand request,
  ) async {
    final userID = await _tokenRepository.getUserIDByRefreshToken(
      refreshToken: request.refreshToken,
    );

    if (userID == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(request.refreshToken);

    if (validationStatus != JwtVerificationStatus.verified) {
      return left([const TokenExpired()]);
    }

    final deviceInfo = await _tokenRepository.getDeviceInfoByRefreshToken(
      refreshToken: request.refreshToken,
    );

    if (deviceInfo != request.deviceInfo) {
      await _tokenRepository.removeNoteByRefreshToken(
        refreshToken: request.refreshToken,
      );

      return left([const StolenToken()]);
    }

    final user = await _endUserRepository.getByID(id: userID);

    if (user == null) {
      return left([const UserDoesNotExist()]);
    }

    await _tokenRepository.removeNoteByRefreshToken(
      refreshToken: request.refreshToken,
    );

    final tokenPair = _jwtTokenService.generate(user);

    await _tokenRepository.addOrUpdate(
      tokenPair: tokenPair,
      userID: userID,
      deviceInfo: request.deviceInfo,
      ip: request.ip,
      createdAt: _dateTimeRepository.now(),
    );

    return right(
      RefreshTokenResult(
        accessToken: tokenPair.access,
        refreshToken: tokenPair.refresh,
      ),
    );
  }
}
