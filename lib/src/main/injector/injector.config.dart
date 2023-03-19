// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i31;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i44;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i93;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i52;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i94;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i58;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i92;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i51;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i71;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i73;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i72;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i45;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i33;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i75;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i76;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i24;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i74;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i17;
import 'package:load_question_server/src/features/common/common.dart' as _i95;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i18;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i81;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i86;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i16;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i96;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i59;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i97;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i60;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i98;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i61;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i99;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i62;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i100;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i63;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i84;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i14;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i88;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i46;
import 'package:load_question_server/src/features/game/domain/domain.dart'
    as _i82;
import 'package:load_question_server/src/features/game/domain/services/game_state_service.dart'
    as _i10;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i38;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i39;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i40;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i41;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i42;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i22;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i26;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i79;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i80;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i21;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i78;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i77;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i87;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i19;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i83;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i30;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i29;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i90;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i91;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i27;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i89;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i85;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i36;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i68;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i69;
import 'package:load_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i35;
import 'package:load_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i65;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i48;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i50;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i55;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i57;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i64;
import 'package:load_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i67;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i70;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i11;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i47;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i49;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i56;
import 'package:load_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i66;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i43;
import 'package:mapster/mapster.dart' as _i53;
import 'package:mediator/mediator.dart' as _i54;

import '../../env/env_module.dart' as _i101;
import '../third_party/mapster_module.dart' as _i102;
import '../third_party/mediator_module.dart' as _i103;

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
  gh.singleton<_i10.GameStateService>(
    _i10.GameStateService(
      gameRepository: gh<_i11.GameRepository>(),
      dateTimeRepository: gh<_i11.DateTimeRepository>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i12.GetAnswerCommandValidator>(
      _i12.GetAnswerCommandValidator());
  gh.singleton<_i13.GetLobbiesQueryValidator>(_i13.GetLobbiesQueryValidator());
  gh.singleton<_i14.GetStateQueryValidator>(_i14.GetStateQueryValidator());
  gh.singleton<_i15.GetUserQueryValidator>(_i15.GetUserQueryValidator());
  gh.singleton<_i16.GiveAnswerCommandValidator>(
      _i16.GiveAnswerCommandValidator());
  gh.singleton<_i17.HashService>(_i18.ProdHashService());
  gh.singleton<_i19.JoinLobbyCommandValidator>(
      _i19.JoinLobbyCommandValidator());
  gh.singleton<_i20.JsonConverter<_i21.SetLeaderRequest, Map<String, Object?>>>(
      _i22.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.SetNotReadyRequest, Map<String, Object?>>>(
      _i23.SetNotReadyRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i24.VerifyTokenRequest, Map<String, Object?>>>(
      _i25.VerifyTokenRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.SetReadyRequest, Map<String, Object?>>>(
      _i26.SetReadyRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i27.JoinLobbyRequest, Map<String, Object?>>>(
      _i28.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i27.GetLobbiesRequest, Map<String, Object?>>>(
      _i29.GetLobbiesRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i27.CreateLobbyRequest, Map<String, Object?>>>(
      _i30.CreateLobbyRequestJsonConverter());
  gh.singleton<_i31.JsonConverter<_i24.RegisterRequest, Map<String, Object?>>>(
      _i32.RegisterRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i24.LogOutRequest, Map<String, Object?>>>(
      _i33.LogOutRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.StartRoundRequest, Map<String, Object?>>>(
      _i34.StartRoundRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i35.GetUserRequest, Map<String, Object?>>>(
      _i36.GetUserRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i24.LogInRequest, Map<String, Object?>>>(
      _i37.LogInRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.GetAnswerRequest, Map<String, Object?>>>(
      _i38.GetAnswerRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.GetStateRequest, Map<String, Object?>>>(
      _i39.GetStateRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.GiveAnswerRequest, Map<String, Object?>>>(
      _i40.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.ListenStateRequest, Map<String, Object?>>>(
      _i41.ListenStateRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.RestartRequest, Map<String, Object?>>>(
      _i42.RestartRequestJsonConverter());
  gh.singleton<_i43.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i44.JwtTokenService>(
      _i45.ProdJwtTokenService(gh<_i43.JwtSettings>()));
  gh.singleton<_i46.ListenStateQueryValidator>(
      _i46.ListenStateQueryValidator());
  gh.singleton<_i47.LobbyPasswordHashRepository>(
    _i48.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i49.LobbyRepository>(
    _i50.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i51.LogInQueryValidator>(_i51.LogInQueryValidator());
  gh.singleton<_i52.LogOutCommandValidator>(_i52.LogOutCommandValidator());
  gh.singleton<_i53.Mapster>(mapsterModule.mapster);
  gh.singleton<_i54.Mediator>(mediatorModule.mediator);
  gh.singleton<_i11.PasswordHashRepository>(
    _i55.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i56.QuestionRepository>(
    _i57.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i58.RegisterCommandValidator>(_i58.RegisterCommandValidator());
  gh.singleton<_i59.RestartCommandValidator>(_i59.RestartCommandValidator());
  gh.singleton<_i60.SetLeaderCommandValidator>(
      _i60.SetLeaderCommandValidator());
  gh.singleton<_i61.SetNotReadyCommandValidator>(
      _i61.SetNotReadyCommandValidator());
  gh.singleton<_i62.SetReadyCommandValidator>(_i62.SetReadyCommandValidator());
  gh.singleton<_i63.StartRoundCommandValidator>(
      _i63.StartRoundCommandValidator());
  gh.singleton<_i11.TokenRepository>(
    _i64.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i65.UserController>(() => _i65.UserController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i66.UserGameStateActivityRepository>(
    _i67.TestUserGameStateActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i68.UserMapsterRegistrar>(
      _i68.UserMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i69.UserMediatorRegistrar>(
      _i69.UserMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i11.UserRepository>(
    _i70.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i71.VerifyTokenQueryHandler>(_i71.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i72.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i73.VerifyTokenQueryValidator>(
      _i73.VerifyTokenQueryValidator());
  gh.factory<_i74.AuthController>(() => _i74.AuthController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i75.AuthMapsterRegistrar>(
      _i75.AuthMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i76.AuthMediatorRegistrar>(
      _i76.AuthMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i77.CreateLobbyCommandHandler>(_i77.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i17.HashService>(),
  ));
  gh.factory<_i78.GameController>(() => _i78.GameController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i79.GameMapsterRegistrar>(
      _i79.GameMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i80.GameMediatorRegistrar>(
      _i80.GameMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i81.GetAnswerCommandHandler>(_i81.GetAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i82.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i83.GetLobbiesQueryHandler>(
      _i83.GetLobbiesQueryHandler(lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i84.GetStateQueryHandler>(_i84.GetStateQueryHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i82.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i85.GetUserQueryHandler>(
      _i85.GetUserQueryHandler(userRepository: gh<_i11.UserRepository>()));
  gh.singleton<_i86.GiveAnswerCommandHandler>(_i86.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i82.GameStateService>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i87.JoinLobbyCommandHandler>(_i87.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i17.HashService>(),
  ));
  gh.singleton<_i88.ListenStateQueryHandler>(_i88.ListenStateQueryHandler(
    gameStateService: gh<_i82.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.factory<_i89.LobbyController>(() => _i89.LobbyController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i90.LobbyMapsterRegistrar>(
      _i90.LobbyMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i91.LobbyMediatorRegistrar>(
      _i91.LobbyMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i92.LogInQueryHandler>(_i92.LogInQueryHandler(
    jwtTokenService: gh<_i72.JwtTokenService>(),
    hashService: gh<_i17.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i93.LogOutCommandHandler>(_i93.LogOutCommandHandler(
    jwtTokenService: gh<_i72.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i94.RegisterCommandHandler>(_i94.RegisterCommandHandler(
    jwtTokenService: gh<_i72.JwtTokenService>(),
    hashService: gh<_i95.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i96.RestartCommandHandler>(_i96.RestartCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i82.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i97.SetLeaderCommandHandler>(_i97.SetLeaderCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i82.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i98.SetNotReadyCommandHandler>(_i98.SetNotReadyCommandHandler(
    gameStateService: gh<_i82.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i99.SetReadyCommandHandler>(_i99.SetReadyCommandHandler(
    gameStateService: gh<_i82.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i100.StartRoundCommandHandler>(_i100.StartRoundCommandHandler(
    gameStateService: gh<_i82.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    questionRepository: gh<_i11.QuestionRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i101.EnvModule {}

class _$MapsterModule extends _i102.MapsterModule {}

class _$MediatorModule extends _i103.MediatorModule {}
