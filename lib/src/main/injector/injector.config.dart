// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i19;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i36;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i41;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i89;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i49;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i90;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i55;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i88;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i48;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i69;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i71;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i70;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i42;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i31;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i30;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i33;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i73;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i74;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i29;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i72;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i16;
import 'package:load_question_server/src/features/common/common.dart' as _i91;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i17;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i79;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i82;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i56;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i58;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i59;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i60;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i61;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i62;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i63;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i64;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i65;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i66;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i81;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i14;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i84;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i43;
import 'package:load_question_server/src/features/game/domain/domain.dart'
    as _i57;
import 'package:load_question_server/src/features/game/domain/services/game_state_service.dart'
    as _i10;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i38;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i39;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i21;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i22;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i24;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i26;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i35;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i77;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i78;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i20;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i76;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i75;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i83;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i18;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i80;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i86;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i87;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i27;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i85;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i45;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i47;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i52;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i54;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i67;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i68;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i11;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i44;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i46;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i53;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i40;
import 'package:mapster/mapster.dart' as _i50;
import 'package:mediator/mediator.dart' as _i51;

import '../../env/env_module.dart' as _i92;
import '../third_party/mapster_module.dart' as _i93;
import '../third_party/mediator_module.dart' as _i94;

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
  gh.singleton<_i15.GiveAnswerCommandValidator>(
      _i15.GiveAnswerCommandValidator());
  gh.singleton<_i16.HashService>(_i17.ProdHashService());
  gh.singleton<_i18.JoinLobbyCommandValidator>(
      _i18.JoinLobbyCommandValidator());
  gh.singleton<
          _i19.JsonConverter<_i20.GiveAnswerRequest, Map<String, Object?>>>(
      _i21.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i20.ListenStateRequest, Map<String, Object?>>>(
      _i22.ListenStateRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.RestartRequest, Map<String, Object?>>>(
      _i23.RestartRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.SetLeaderRequest, Map<String, Object?>>>(
      _i24.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i20.SetNotReadyRequest, Map<String, Object?>>>(
      _i25.SetNotReadyRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.SetReadyRequest, Map<String, Object?>>>(
      _i26.SetReadyRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i27.CreateLobbyRequest, Map<String, Object?>>>(
      _i28.CreateLobbyRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i29.LogOutRequest, Map<String, Object?>>>(
      _i30.LogOutRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i29.LogInRequest, Map<String, Object?>>>(
      _i31.LogInRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i27.GetLobbiesRequest, Map<String, Object?>>>(
      _i32.GetLobbiesRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i29.VerifyTokenRequest, Map<String, Object?>>>(
      _i33.VerifyTokenRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i27.JoinLobbyRequest, Map<String, Object?>>>(
      _i34.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i20.StartRoundRequest, Map<String, Object?>>>(
      _i35.StartRoundRequestJsonConverter());
  gh.singleton<_i36.JsonConverter<_i29.RegisterRequest, Map<String, Object?>>>(
      _i37.RegisterRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.GetAnswerRequest, Map<String, Object?>>>(
      _i38.GetAnswerRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.GetStateRequest, Map<String, Object?>>>(
      _i39.GetStateRequestJsonConverter());
  gh.singleton<_i40.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i41.JwtTokenService>(
      _i42.ProdJwtTokenService(gh<_i40.JwtSettings>()));
  gh.singleton<_i43.ListenStateQueryValidator>(
      _i43.ListenStateQueryValidator());
  gh.singleton<_i44.LobbyPasswordHashRepository>(
    _i45.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i46.LobbyRepository>(
    _i47.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i48.LogInQueryValidator>(_i48.LogInQueryValidator());
  gh.singleton<_i49.LogOutCommandValidator>(_i49.LogOutCommandValidator());
  gh.singleton<_i50.Mapster>(mapsterModule.mapster);
  gh.singleton<_i51.Mediator>(mediatorModule.mediator);
  gh.singleton<_i11.PasswordHashRepository>(
    _i52.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i53.QuestionRepository>(
    _i54.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i55.RegisterCommandValidator>(_i55.RegisterCommandValidator());
  gh.singleton<_i56.RestartCommandHandler>(_i56.RestartCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i57.GameStateService>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i58.RestartCommandValidator>(_i58.RestartCommandValidator());
  gh.singleton<_i59.SetLeaderCommandHandler>(_i59.SetLeaderCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i57.GameStateService>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i60.SetLeaderCommandValidator>(
      _i60.SetLeaderCommandValidator());
  gh.singleton<_i61.SetNotReadyCommandHandler>(_i61.SetNotReadyCommandHandler(
    gameStateService: gh<_i57.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i62.SetNotReadyCommandValidator>(
      _i62.SetNotReadyCommandValidator());
  gh.singleton<_i63.SetReadyCommandHandler>(_i63.SetReadyCommandHandler(
    gameStateService: gh<_i57.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i64.SetReadyCommandValidator>(_i64.SetReadyCommandValidator());
  gh.singleton<_i65.StartRoundCommandHandler>(_i65.StartRoundCommandHandler(
    gameStateService: gh<_i57.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    questionRepository: gh<_i11.QuestionRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i66.StartRoundCommandValidator>(
      _i66.StartRoundCommandValidator());
  gh.singleton<_i11.TokenRepository>(
    _i67.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i11.UserRepository>(
    _i68.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i69.VerifyTokenQueryHandler>(_i69.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i71.VerifyTokenQueryValidator>(
      _i71.VerifyTokenQueryValidator());
  gh.factory<_i72.AuthController>(() => _i72.AuthController(
        mediator: gh<_i51.Mediator>(),
        mapster: gh<_i50.Mapster>(),
      ));
  gh.singleton<_i73.AuthMapsterRegistrar>(
      _i73.AuthMapsterRegistrar(gh<_i50.Mapster>())..register());
  gh.singleton<_i74.AuthMediatorRegistrar>(
      _i74.AuthMediatorRegistrar(gh<_i51.Mediator>())..register());
  gh.singleton<_i75.CreateLobbyCommandHandler>(_i75.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i16.HashService>(),
  ));
  gh.factory<_i76.GameController>(() => _i76.GameController(
        mediator: gh<_i51.Mediator>(),
        mapster: gh<_i50.Mapster>(),
      ));
  gh.singleton<_i77.GameMapsterRegistrar>(
      _i77.GameMapsterRegistrar(gh<_i50.Mapster>())..register());
  gh.singleton<_i78.GameMediatorRegistrar>(
      _i78.GameMediatorRegistrar(gh<_i51.Mediator>())..register());
  gh.singleton<_i79.GetAnswerCommandHandler>(_i79.GetAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i57.GameStateService>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i80.GetLobbiesQueryHandler>(
      _i80.GetLobbiesQueryHandler(lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i81.GetStateQueryHandler>(_i81.GetStateQueryHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i57.GameStateService>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i82.GiveAnswerCommandHandler>(_i82.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i57.GameStateService>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.singleton<_i83.JoinLobbyCommandHandler>(_i83.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i16.HashService>(),
  ));
  gh.singleton<_i84.ListenStateQueryHandler>(_i84.ListenStateQueryHandler(
    gameStateService: gh<_i57.GameStateService>(),
    mapster: gh<_i50.Mapster>(),
  ));
  gh.factory<_i85.LobbyController>(() => _i85.LobbyController(
        mediator: gh<_i51.Mediator>(),
        mapster: gh<_i50.Mapster>(),
      ));
  gh.singleton<_i86.LobbyMapsterRegistrar>(
      _i86.LobbyMapsterRegistrar(gh<_i50.Mapster>())..register());
  gh.singleton<_i87.LobbyMediatorRegistrar>(
      _i87.LobbyMediatorRegistrar(gh<_i51.Mediator>())..register());
  gh.singleton<_i88.LogInQueryHandler>(_i88.LogInQueryHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    hashService: gh<_i16.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i89.LogOutCommandHandler>(_i89.LogOutCommandHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i90.RegisterCommandHandler>(_i90.RegisterCommandHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    hashService: gh<_i91.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i92.EnvModule {}

class _$MapsterModule extends _i93.MapsterModule {}

class _$MediatorModule extends _i94.MediatorModule {}
