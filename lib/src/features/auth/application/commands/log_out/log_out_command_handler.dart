import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../services/jwt_token_service.dart';
import 'log_out_command.dart';

@singleton
class LogOutCommandHandler extends RequestHandler<
    Either<List<DetailedException>, LogOutResult>, LogOutCommand> {
  const LogOutCommandHandler({
    required JwtTokenService jwtTokenService,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, LogOutResult>> handle(
    LogOutCommand request,
  ) async {
    final userID = await _tokenRepository.getUserIDByToken(
      token: request.token,
    );

    if (userID == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(request.token);

    if (validationStatus != JwtVerificationStatus.verified) {
      return left([const TokenExpired()]);
    }

    await _tokenRepository.removeNoteByToken(
      token: request.token,
    );

    return right(LogOutResult(info: 'Log out succeeded'));
  }
}
