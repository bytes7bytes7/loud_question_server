// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i22;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i30;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i69;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i70;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i44;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i68;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i53;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i55;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i54;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i31;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i24;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i57;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i58;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i56;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i11;
import 'package:load_question_server/src/features/common/common.dart' as _i71;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i12;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i45;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i46;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i47;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i48;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i49;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i50;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i20;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i26;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i61;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i62;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i19;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i60;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i59;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i64;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i63;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i10;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i16;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i21;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i27;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i66;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i67;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i15;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i65;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i33;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i35;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i41;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i43;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i51;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i52;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i40;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i32;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i34;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i42;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i29;
import 'package:mapster/mapster.dart' as _i38;
import 'package:mediator/mediator.dart' as _i39;

import '../../env/env_module.dart' as _i72;
import '../third_party/mapster_module.dart' as _i73;
import '../third_party/mediator_module.dart' as _i74;

const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final envModule = _$EnvModule();
  final mapsterModule = _$MapsterModule();
  final mediatorModule = _$MediatorModule();
  gh.singleton<_i3.CreateLobbyCommandValidator>(
      _i3.CreateLobbyCommandValidator());
  gh.singleton<_i4.DateTimeProvider>(_i5.ProdDateTimeProvider());
  gh.singleton<_i6.DateTimeRepository>(_i7.ProdDateTimeRepository());
  gh.singleton<_i8.GameRepository>(
    _i9.TestGameRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i10.GetLobbiesQueryValidator>(_i10.GetLobbiesQueryValidator());
  gh.singleton<_i11.HashService>(_i12.ProdHashService());
  gh.singleton<_i13.JoinLobbyCommandValidator>(
      _i13.JoinLobbyCommandValidator());
  gh.singleton<
          _i14.JsonConverter<_i15.CreateLobbyRequest, Map<String, Object?>>>(
      _i16.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i17.VerifyTokenRequest, Map<String, Object?>>>(
      _i18.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i19.SetNotReadyRequest, Map<String, Object?>>>(
      _i20.SetNotReadyRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i15.GetLobbiesRequest, Map<String, Object?>>>(
      _i21.GetLobbiesRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i17.RegisterRequest, Map<String, Object?>>>(
      _i23.RegisterRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i17.LogOutRequest, Map<String, Object?>>>(
      _i24.LogOutRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i17.LogInRequest, Map<String, Object?>>>(
      _i25.LogInRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i19.StartRoundRequest, Map<String, Object?>>>(
      _i26.StartRoundRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i15.JoinLobbyRequest, Map<String, Object?>>>(
      _i27.JoinLobbyRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i19.SetReadyRequest, Map<String, Object?>>>(
      _i28.SetReadyRequestJsonConverter());
  gh.singleton<_i29.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i30.JwtTokenService>(
      _i31.ProdJwtTokenService(gh<_i29.JwtSettings>()));
  gh.singleton<_i32.LobbyPasswordHashRepository>(
    _i33.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i34.LobbyRepository>(
    _i35.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i36.LogInQueryValidator>(_i36.LogInQueryValidator());
  gh.singleton<_i37.LogOutCommandValidator>(_i37.LogOutCommandValidator());
  gh.singleton<_i38.Mapster>(mapsterModule.mapster);
  gh.singleton<_i39.Mediator>(mediatorModule.mediator);
  gh.singleton<_i40.PasswordHashRepository>(
    _i41.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i42.QuestionRepository>(
    _i43.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i44.RegisterCommandValidator>(_i44.RegisterCommandValidator());
  gh.singleton<_i45.SetNotReadyCommandHandler>(_i45.SetNotReadyCommandHandler(
    gameRepository: gh<_i40.GameRepository>(),
    lobbyRepository: gh<_i40.LobbyRepository>(),
  ));
  gh.singleton<_i46.SetNotReadyCommandValidator>(
      _i46.SetNotReadyCommandValidator());
  gh.singleton<_i47.SetReadyCommandHandler>(_i47.SetReadyCommandHandler(
    gameRepository: gh<_i40.GameRepository>(),
    lobbyRepository: gh<_i40.LobbyRepository>(),
  ));
  gh.singleton<_i48.SetReadyCommandValidator>(_i48.SetReadyCommandValidator());
  gh.singleton<_i49.StartRoundCommandHandler>(_i49.StartRoundCommandHandler(
    gameRepository: gh<_i40.GameRepository>(),
    lobbyRepository: gh<_i40.LobbyRepository>(),
    questionRepository: gh<_i40.QuestionRepository>(),
    dateTimeRepository: gh<_i40.DateTimeRepository>(),
  ));
  gh.singleton<_i50.StartRoundCommandValidator>(
      _i50.StartRoundCommandValidator());
  gh.singleton<_i40.TokenRepository>(
    _i51.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i40.UserRepository>(
    _i52.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i53.VerifyTokenQueryHandler>(_i53.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i54.JwtTokenService>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i55.VerifyTokenQueryValidator>(
      _i55.VerifyTokenQueryValidator());
  gh.factory<_i56.AuthController>(() => _i56.AuthController(
        mediator: gh<_i39.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i57.AuthMapsterRegistrar>(
      _i57.AuthMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i58.AuthMediatorRegistrar>(
      _i58.AuthMediatorRegistrar(gh<_i39.Mediator>())..register());
  gh.singleton<_i59.CreateLobbyCommandHandler>(_i59.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i40.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i40.LobbyPasswordHashRepository>(),
    hashService: gh<_i11.HashService>(),
  ));
  gh.factory<_i60.GameController>(() => _i60.GameController(
        mediator: gh<_i39.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i61.GameMapsterRegistrar>(
      _i61.GameMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i62.GameMediatorRegistrar>(
      _i62.GameMediatorRegistrar(gh<_i39.Mediator>())..register());
  gh.singleton<_i63.GetLobbiesQueryHandler>(
      _i63.GetLobbiesQueryHandler(lobbyRepository: gh<_i40.LobbyRepository>()));
  gh.singleton<_i64.JoinLobbyCommandHandler>(_i64.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i40.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i40.LobbyPasswordHashRepository>(),
    hashService: gh<_i11.HashService>(),
  ));
  gh.factory<_i65.LobbyController>(() => _i65.LobbyController(
        mediator: gh<_i39.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i66.LobbyMapsterRegistrar>(
      _i66.LobbyMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i67.LobbyMediatorRegistrar>(
      _i67.LobbyMediatorRegistrar(gh<_i39.Mediator>())..register());
  gh.singleton<_i68.LogInQueryHandler>(_i68.LogInQueryHandler(
    jwtTokenService: gh<_i54.JwtTokenService>(),
    hashService: gh<_i11.HashService>(),
    userRepository: gh<_i40.UserRepository>(),
    passwordHashRepository: gh<_i40.PasswordHashRepository>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i69.LogOutCommandHandler>(_i69.LogOutCommandHandler(
    jwtTokenService: gh<_i54.JwtTokenService>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i70.RegisterCommandHandler>(_i70.RegisterCommandHandler(
    jwtTokenService: gh<_i54.JwtTokenService>(),
    hashService: gh<_i71.HashService>(),
    userRepository: gh<_i40.UserRepository>(),
    passwordHashRepository: gh<_i40.PasswordHashRepository>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i72.EnvModule {}

class _$MapsterModule extends _i73.MapsterModule {}

class _$MediatorModule extends _i74.MediatorModule {}
