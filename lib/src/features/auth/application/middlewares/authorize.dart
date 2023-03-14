import 'package:shelf/shelf.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../../utils/utils.dart';
import '../../../common/common.dart';
import '../exceptions/exceptions.dart';
import '../services/jwt_token_service.dart';

Middleware authorize({
  required JwtSettings jwtSettings,
  required JwtTokenService jwtTokenService,
  required EndUserRepository endUserRepository,
  required TokenRepository tokenRepository,
}) =>
    (innerHandler) {
      return (request) async {
        final authorizationHeader = request.authHeader;

        if (authorizationHeader == null) {
          return problemHandler([const NoTokenProvided()]);
        }

        final accessToken = request.token;

        if (accessToken == null) {
          return problemHandler([const InvalidToken()]);
        }

        final validationStatus = jwtTokenService.verify(accessToken);

        if (validationStatus != JwtVerificationStatus.verified) {
          return problemHandler([const TokenExpired()]);
        }

        final userID = await tokenRepository.getUserIDByAccessToken(
          accessToken: accessToken,
        );

        if (userID == null) {
          return problemHandler([const TokenExpired()]);
        }

        final user = await endUserRepository.getByID(id: userID);

        if (user == null) {
          return problemHandler([const UserDoesNotExist()]);
        }

        // change context
        request = request.setUser(user);

        return Future.sync(() => innerHandler(request)).then((response) {
          return response;
        });
      };
    };
