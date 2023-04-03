import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../exceptions/duplicate_name.dart';
import '../../services/jwt_token_service.dart';
import 'register_command.dart';

@singleton
class RegisterCommandHandler extends RequestHandler<RegisterCommand,
    Either<List<DetailedException>, AuthResult>> {
  const RegisterCommandHandler({
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
  Future<Either<List<DetailedException>, AuthResult>> handle(
    RegisterCommand request,
  ) async {
    final userAlreadyExists =
        await _userRepository.getByName(name: request.name) != null;

    if (userAlreadyExists) {
      return left([const DuplicateName()]);
    }

    late UserID userID;
    do {
      userID = UserID.generate();
    } while ((await _userRepository.getByID(id: userID)) != null);

    final passwordHash = _hashService.hashUserPassword(request.password);

    final user = User(
      id: userID,
      name: request.name,
    );

    await _userRepository.addOrUpdate(user: user);
    await _passwordHashRepository.saveHashByID(
      userID: userID,
      passwordHash: passwordHash,
    );

    final token = _jwtTokenService.generate(user);

    await _tokenRepository.add(
      token: token,
      userID: userID,
    );

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
