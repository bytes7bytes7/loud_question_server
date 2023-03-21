// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i26;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i48;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i104;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i58;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i105;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i64;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i103;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i57;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i80;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i82;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i81;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i49;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i31;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i46;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i84;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i85;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i27;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i83;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i18;
import 'package:load_question_server/src/features/common/common.dart' as _i106;
import 'package:load_question_server/src/features/common/domain/domain.dart'
    as _i91;
import 'package:load_question_server/src/features/common/domain/services/game_state_service.dart'
    as _i10;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i19;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i90;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i96;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i17;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i107;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i65;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i108;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i66;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i109;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i67;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i110;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i68;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_handler.dart'
    as _i111;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_validator.dart'
    as _i69;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i112;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i70;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i94;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i99;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i51;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i36;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i37;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i38;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i39;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i40;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i41;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i42;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i43;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_answer_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i44;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i88;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i89;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i24;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i87;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i86;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i97;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i20;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i92;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_handler.dart'
    as _i93;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_validator.dart'
    as _i14;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_handler.dart'
    as _i98;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_validator.dart'
    as _i50;
import 'package:load_question_server/src/features/lobby/domain/services/lobby_service.dart'
    as _i56;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i45;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i33;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobby_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/listen_lobby_request_json_converter.dart'
    as _i35;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i101;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i102;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i22;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i100;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i95;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i16;
import 'package:load_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i30;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i77;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i78;
import 'package:load_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i29;
import 'package:load_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i72;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i53;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i55;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i61;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i63;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i71;
import 'package:load_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i74;
import 'package:load_question_server/src/repositories/implementations/user_lobby_activity_repository.dart'
    as _i76;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i79;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i11;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i52;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i54;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i62;
import 'package:load_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i73;
import 'package:load_question_server/src/repositories/interfaces/user_lobby_activity_repository.dart'
    as _i75;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i47;
import 'package:mapster/mapster.dart' as _i59;
import 'package:mediator/mediator.dart' as _i60;

import '../../env/env_module.dart' as _i113;
import '../third_party/mapster_module.dart' as _i114;
import '../third_party/mediator_module.dart' as _i115;

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
  gh.singleton<_i14.GetLobbyQueryValidator>(_i14.GetLobbyQueryValidator());
  gh.singleton<_i15.GetStateQueryValidator>(_i15.GetStateQueryValidator());
  gh.singleton<_i16.GetUserQueryValidator>(_i16.GetUserQueryValidator());
  gh.singleton<_i17.GiveAnswerCommandValidator>(
      _i17.GiveAnswerCommandValidator());
  gh.singleton<_i18.HashService>(_i19.ProdHashService());
  gh.singleton<_i20.JoinLobbyCommandValidator>(
      _i20.JoinLobbyCommandValidator());
  gh.singleton<_i21.JsonConverter<_i22.GetLobbyRequest, Map<String, Object?>>>(
      _i23.GetLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.StartAnswerRequest, Map<String, Object?>>>(
      _i25.StartAnswerRequestJsonConverter());
  gh.singleton<_i26.JsonConverter<_i27.RegisterRequest, Map<String, Object?>>>(
      _i28.RegisterRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i29.GetUserRequest, Map<String, Object?>>>(
      _i30.GetUserRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i27.LogOutRequest, Map<String, Object?>>>(
      _i31.LogOutRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i27.LogInRequest, Map<String, Object?>>>(
      _i32.LogInRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.GetLobbiesRequest, Map<String, Object?>>>(
      _i33.GetLobbiesRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.JoinLobbyRequest, Map<String, Object?>>>(
      _i34.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.ListenLobbyRequest, Map<String, Object?>>>(
      _i35.ListenLobbyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetAnswerRequest, Map<String, Object?>>>(
      _i36.GetAnswerRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetStateRequest, Map<String, Object?>>>(
      _i37.GetStateRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.GiveAnswerRequest, Map<String, Object?>>>(
      _i38.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.ListenStateRequest, Map<String, Object?>>>(
      _i39.ListenStateRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.RestartRequest, Map<String, Object?>>>(
      _i40.RestartRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.SetLeaderRequest, Map<String, Object?>>>(
      _i41.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.SetNotReadyRequest, Map<String, Object?>>>(
      _i42.SetNotReadyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.SetReadyRequest, Map<String, Object?>>>(
      _i43.SetReadyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.StartRoundRequest, Map<String, Object?>>>(
      _i44.StartRoundRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.CreateLobbyRequest, Map<String, Object?>>>(
      _i45.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i27.VerifyTokenRequest, Map<String, Object?>>>(
      _i46.VerifyTokenRequestJsonConverter());
  gh.singleton<_i47.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i48.JwtTokenService>(
      _i49.ProdJwtTokenService(gh<_i47.JwtSettings>()));
  gh.singleton<_i50.ListenLobbyQueryValidator>(
      _i50.ListenLobbyQueryValidator());
  gh.singleton<_i51.ListenStateQueryValidator>(
      _i51.ListenStateQueryValidator());
  gh.singleton<_i52.LobbyPasswordHashRepository>(
    _i53.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i54.LobbyRepository>(
    _i55.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i56.LobbyService>(
    _i56.LobbyService(
      lobbyRepository: gh<_i11.LobbyRepository>(),
      dateTimeRepository: gh<_i11.DateTimeRepository>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i57.LogInQueryValidator>(_i57.LogInQueryValidator());
  gh.singleton<_i58.LogOutCommandValidator>(_i58.LogOutCommandValidator());
  gh.singleton<_i59.Mapster>(mapsterModule.mapster);
  gh.singleton<_i60.Mediator>(mediatorModule.mediator);
  gh.singleton<_i11.PasswordHashRepository>(
    _i61.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i62.QuestionRepository>(
    _i63.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i64.RegisterCommandValidator>(_i64.RegisterCommandValidator());
  gh.singleton<_i65.RestartCommandValidator>(_i65.RestartCommandValidator());
  gh.singleton<_i66.SetLeaderCommandValidator>(
      _i66.SetLeaderCommandValidator());
  gh.singleton<_i67.SetNotReadyCommandValidator>(
      _i67.SetNotReadyCommandValidator());
  gh.singleton<_i68.SetReadyCommandValidator>(_i68.SetReadyCommandValidator());
  gh.singleton<_i69.StartAnswerCommandValidator>(
      _i69.StartAnswerCommandValidator());
  gh.singleton<_i70.StartRoundCommandValidator>(
      _i70.StartRoundCommandValidator());
  gh.singleton<_i11.TokenRepository>(
    _i71.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i72.UserController>(() => _i72.UserController(
        mediator: gh<_i60.Mediator>(),
        mapster: gh<_i59.Mapster>(),
      ));
  gh.singleton<_i73.UserGameStateActivityRepository>(
    _i74.TestUserGameStateActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i75.UserLobbyActivityRepository>(
    _i76.TestUserLobbyActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i77.UserMapsterRegistrar>(
      _i77.UserMapsterRegistrar(gh<_i59.Mapster>())..register());
  gh.singleton<_i78.UserMediatorRegistrar>(
      _i78.UserMediatorRegistrar(gh<_i60.Mediator>())..register());
  gh.singleton<_i11.UserRepository>(
    _i79.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i80.VerifyTokenQueryHandler>(_i80.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i82.VerifyTokenQueryValidator>(
      _i82.VerifyTokenQueryValidator());
  gh.factory<_i83.AuthController>(() => _i83.AuthController(
        mediator: gh<_i60.Mediator>(),
        mapster: gh<_i59.Mapster>(),
      ));
  gh.singleton<_i84.AuthMapsterRegistrar>(
      _i84.AuthMapsterRegistrar(gh<_i59.Mapster>())..register());
  gh.singleton<_i85.AuthMediatorRegistrar>(
      _i85.AuthMediatorRegistrar(gh<_i60.Mediator>())..register());
  gh.singleton<_i86.CreateLobbyCommandHandler>(_i86.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.factory<_i87.GameController>(() => _i87.GameController(
        mediator: gh<_i60.Mediator>(),
        mapster: gh<_i59.Mapster>(),
      ));
  gh.singleton<_i88.GameMapsterRegistrar>(
      _i88.GameMapsterRegistrar(gh<_i59.Mapster>())..register());
  gh.singleton<_i89.GameMediatorRegistrar>(
      _i89.GameMediatorRegistrar(gh<_i60.Mediator>())..register());
  gh.singleton<_i90.GetAnswerCommandHandler>(_i90.GetAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i92.GetLobbiesQueryHandler>(
      _i92.GetLobbiesQueryHandler(lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i93.GetLobbyQueryHandler>(
      _i93.GetLobbyQueryHandler(lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i94.GetStateQueryHandler>(_i94.GetStateQueryHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i95.GetUserQueryHandler>(
      _i95.GetUserQueryHandler(userRepository: gh<_i11.UserRepository>()));
  gh.singleton<_i96.GiveAnswerCommandHandler>(_i96.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i97.JoinLobbyCommandHandler>(_i97.JoinLobbyCommandHandler(
    lobbyService: gh<_i56.LobbyService>(),
    userLobbyActivityRepository: gh<_i11.UserLobbyActivityRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.singleton<_i98.ListenLobbyQueryHandler>(_i98.ListenLobbyQueryHandler(
    lobbyService: gh<_i56.LobbyService>(),
    userLobbyActivityRepository: gh<_i11.UserLobbyActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
  ));
  gh.singleton<_i99.ListenStateQueryHandler>(_i99.ListenStateQueryHandler(
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.factory<_i100.LobbyController>(() => _i100.LobbyController(
        mediator: gh<_i60.Mediator>(),
        mapster: gh<_i59.Mapster>(),
      ));
  gh.singleton<_i101.LobbyMapsterRegistrar>(
      _i101.LobbyMapsterRegistrar(gh<_i59.Mapster>())..register());
  gh.singleton<_i102.LobbyMediatorRegistrar>(
      _i102.LobbyMediatorRegistrar(gh<_i60.Mediator>())..register());
  gh.singleton<_i103.LogInQueryHandler>(_i103.LogInQueryHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    hashService: gh<_i18.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i104.LogOutCommandHandler>(_i104.LogOutCommandHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i105.RegisterCommandHandler>(_i105.RegisterCommandHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    hashService: gh<_i106.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i107.RestartCommandHandler>(_i107.RestartCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i108.SetLeaderCommandHandler>(_i108.SetLeaderCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i109.SetNotReadyCommandHandler>(_i109.SetNotReadyCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i110.SetReadyCommandHandler>(_i110.SetReadyCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i111.StartAnswerCommandHandler>(_i111.StartAnswerCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  gh.singleton<_i112.StartRoundCommandHandler>(_i112.StartRoundCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    questionRepository: gh<_i11.QuestionRepository>(),
    dateTimeRepository: gh<_i11.DateTimeRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i59.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i113.EnvModule {}

class _$MapsterModule extends _i114.MapsterModule {}

class _$MediatorModule extends _i115.MediatorModule {}
