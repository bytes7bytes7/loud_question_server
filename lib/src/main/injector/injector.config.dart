// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i21;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i81;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i43;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i82;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i50;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i80;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i42;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i63;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i65;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i64;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i22;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i67;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i68;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i66;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i13;
import 'package:load_question_server/src/features/common/common.dart' as _i83;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i14;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i73;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i10;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i75;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i51;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i52;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i53;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i54;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i55;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i56;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i57;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i58;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i59;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i60;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i24;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i20;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i30;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i31;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i71;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i72;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i19;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i70;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i69;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i76;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i74;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i11;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i27;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i29;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i33;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i78;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i79;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i26;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i77;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i39;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i41;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i47;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i49;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i61;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i62;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i46;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i38;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i40;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i48;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i35;
import 'package:mapster/mapster.dart' as _i44;
import 'package:mediator/mediator.dart' as _i45;

import '../../env/env_module.dart' as _i84;
import '../third_party/mapster_module.dart' as _i85;
import '../third_party/mediator_module.dart' as _i86;

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
  gh.singleton<_i10.GetAnswerCommandValidator>(
      _i10.GetAnswerCommandValidator());
  gh.singleton<_i11.GetLobbiesQueryValidator>(_i11.GetLobbiesQueryValidator());
  gh.singleton<_i12.GiveAnswerCommandValidator>(
      _i12.GiveAnswerCommandValidator());
  gh.singleton<_i13.HashService>(_i14.ProdHashService());
  gh.singleton<_i15.JoinLobbyCommandValidator>(
      _i15.JoinLobbyCommandValidator());
  gh.singleton<
          _i16.JsonConverter<_i17.VerifyTokenRequest, Map<String, Object?>>>(
      _i18.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i19.GiveAnswerRequest, Map<String, Object?>>>(
      _i20.GiveAnswerRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i17.RegisterRequest, Map<String, Object?>>>(
      _i22.RegisterRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i17.LogOutRequest, Map<String, Object?>>>(
      _i23.LogOutRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i19.GetAnswerRequest, Map<String, Object?>>>(
      _i24.GetAnswerRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i19.RestartRequest, Map<String, Object?>>>(
      _i25.RestartRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i26.CreateLobbyRequest, Map<String, Object?>>>(
      _i27.CreateLobbyRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i17.LogInRequest, Map<String, Object?>>>(
      _i28.LogInRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i26.GetLobbiesRequest, Map<String, Object?>>>(
      _i29.GetLobbiesRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i19.SetNotReadyRequest, Map<String, Object?>>>(
      _i30.SetNotReadyRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i19.SetReadyRequest, Map<String, Object?>>>(
      _i31.SetReadyRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i19.StartRoundRequest, Map<String, Object?>>>(
      _i32.StartRoundRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i26.JoinLobbyRequest, Map<String, Object?>>>(
      _i33.JoinLobbyRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i19.SetLeaderRequest, Map<String, Object?>>>(
      _i34.SetLeaderRequestJsonConverter());
  gh.singleton<_i35.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i36.JwtTokenService>(
      _i37.ProdJwtTokenService(gh<_i35.JwtSettings>()));
  gh.singleton<_i38.LobbyPasswordHashRepository>(
    _i39.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i40.LobbyRepository>(
    _i41.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i42.LogInQueryValidator>(_i42.LogInQueryValidator());
  gh.singleton<_i43.LogOutCommandValidator>(_i43.LogOutCommandValidator());
  gh.singleton<_i44.Mapster>(mapsterModule.mapster);
  gh.singleton<_i45.Mediator>(mediatorModule.mediator);
  gh.singleton<_i46.PasswordHashRepository>(
    _i47.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i48.QuestionRepository>(
    _i49.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i50.RegisterCommandValidator>(_i50.RegisterCommandValidator());
  gh.singleton<_i51.RestartCommandHandler>(_i51.RestartCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    gameRepository: gh<_i46.GameRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i52.RestartCommandValidator>(_i52.RestartCommandValidator());
  gh.singleton<_i53.SetLeaderCommandHandler>(_i53.SetLeaderCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    gameRepository: gh<_i46.GameRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i54.SetLeaderCommandValidator>(
      _i54.SetLeaderCommandValidator());
  gh.singleton<_i55.SetNotReadyCommandHandler>(_i55.SetNotReadyCommandHandler(
    gameRepository: gh<_i46.GameRepository>(),
    lobbyRepository: gh<_i46.LobbyRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i56.SetNotReadyCommandValidator>(
      _i56.SetNotReadyCommandValidator());
  gh.singleton<_i57.SetReadyCommandHandler>(_i57.SetReadyCommandHandler(
    gameRepository: gh<_i46.GameRepository>(),
    lobbyRepository: gh<_i46.LobbyRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i58.SetReadyCommandValidator>(_i58.SetReadyCommandValidator());
  gh.singleton<_i59.StartRoundCommandHandler>(_i59.StartRoundCommandHandler(
    gameRepository: gh<_i46.GameRepository>(),
    lobbyRepository: gh<_i46.LobbyRepository>(),
    questionRepository: gh<_i46.QuestionRepository>(),
    dateTimeRepository: gh<_i46.DateTimeRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i60.StartRoundCommandValidator>(
      _i60.StartRoundCommandValidator());
  gh.singleton<_i46.TokenRepository>(
    _i61.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i46.UserRepository>(
    _i62.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i63.VerifyTokenQueryHandler>(_i63.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i64.JwtTokenService>(),
    tokenRepository: gh<_i46.TokenRepository>(),
  ));
  gh.singleton<_i65.VerifyTokenQueryValidator>(
      _i65.VerifyTokenQueryValidator());
  gh.factory<_i66.AuthController>(() => _i66.AuthController(
        mediator: gh<_i45.Mediator>(),
        mapster: gh<_i44.Mapster>(),
      ));
  gh.singleton<_i67.AuthMapsterRegistrar>(
      _i67.AuthMapsterRegistrar(gh<_i44.Mapster>())..register());
  gh.singleton<_i68.AuthMediatorRegistrar>(
      _i68.AuthMediatorRegistrar(gh<_i45.Mediator>())..register());
  gh.singleton<_i69.CreateLobbyCommandHandler>(_i69.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i46.LobbyPasswordHashRepository>(),
    hashService: gh<_i13.HashService>(),
  ));
  gh.factory<_i70.GameController>(() => _i70.GameController(
        mediator: gh<_i45.Mediator>(),
        mapster: gh<_i44.Mapster>(),
      ));
  gh.singleton<_i71.GameMapsterRegistrar>(
      _i71.GameMapsterRegistrar(gh<_i44.Mapster>())..register());
  gh.singleton<_i72.GameMediatorRegistrar>(
      _i72.GameMediatorRegistrar(gh<_i45.Mediator>())..register());
  gh.singleton<_i73.GetAnswerCommandHandler>(_i73.GetAnswerCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    gameRepository: gh<_i46.GameRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i74.GetLobbiesQueryHandler>(
      _i74.GetLobbiesQueryHandler(lobbyRepository: gh<_i46.LobbyRepository>()));
  gh.singleton<_i75.GiveAnswerCommandHandler>(_i75.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    gameRepository: gh<_i46.GameRepository>(),
    dateTimeRepository: gh<_i46.DateTimeRepository>(),
    mapster: gh<_i44.Mapster>(),
  ));
  gh.singleton<_i76.JoinLobbyCommandHandler>(_i76.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i46.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i46.LobbyPasswordHashRepository>(),
    hashService: gh<_i13.HashService>(),
  ));
  gh.factory<_i77.LobbyController>(() => _i77.LobbyController(
        mediator: gh<_i45.Mediator>(),
        mapster: gh<_i44.Mapster>(),
      ));
  gh.singleton<_i78.LobbyMapsterRegistrar>(
      _i78.LobbyMapsterRegistrar(gh<_i44.Mapster>())..register());
  gh.singleton<_i79.LobbyMediatorRegistrar>(
      _i79.LobbyMediatorRegistrar(gh<_i45.Mediator>())..register());
  gh.singleton<_i80.LogInQueryHandler>(_i80.LogInQueryHandler(
    jwtTokenService: gh<_i64.JwtTokenService>(),
    hashService: gh<_i13.HashService>(),
    userRepository: gh<_i46.UserRepository>(),
    passwordHashRepository: gh<_i46.PasswordHashRepository>(),
    tokenRepository: gh<_i46.TokenRepository>(),
  ));
  gh.singleton<_i81.LogOutCommandHandler>(_i81.LogOutCommandHandler(
    jwtTokenService: gh<_i64.JwtTokenService>(),
    tokenRepository: gh<_i46.TokenRepository>(),
  ));
  gh.singleton<_i82.RegisterCommandHandler>(_i82.RegisterCommandHandler(
    jwtTokenService: gh<_i64.JwtTokenService>(),
    hashService: gh<_i83.HashService>(),
    userRepository: gh<_i46.UserRepository>(),
    passwordHashRepository: gh<_i46.PasswordHashRepository>(),
    tokenRepository: gh<_i46.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i84.EnvModule {}

class _$MapsterModule extends _i85.MapsterModule {}

class _$MediatorModule extends _i86.MediatorModule {}
