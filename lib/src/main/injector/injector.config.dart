// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i33;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i47;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i103;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i57;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i104;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i63;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i102;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i56;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i79;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i81;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i80;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i48;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i45;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i26;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i40;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i83;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i84;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i25;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i82;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/providers/date_time_provider.dart'
    as _i10;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i17;
import 'package:load_question_server/src/features/common/common.dart' as _i105;
import 'package:load_question_server/src/features/common/domain/domain.dart'
    as _i90;
import 'package:load_question_server/src/features/common/domain/services/game_state_service.dart'
    as _i8;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i18;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i89;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i11;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i95;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i16;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i106;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i64;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i107;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i65;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i108;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i66;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i109;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i67;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_handler.dart'
    as _i110;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_validator.dart'
    as _i68;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i111;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i69;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i93;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i14;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i98;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i50;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i39;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i41;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i42;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i43;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i44;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i35;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i22;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_answer_request_json_converter.dart'
    as _i27;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i38;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i87;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i88;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i21;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i86;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i85;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i96;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i19;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i91;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_handler.dart'
    as _i92;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_handler.dart'
    as _i97;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_validator.dart'
    as _i49;
import 'package:load_question_server/src/features/lobby/domain/services/lobby_service.dart'
    as _i55;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i29;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i30;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobby_request_json_converter.dart'
    as _i31;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i24;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/listen_lobby_request_json_converter.dart'
    as _i28;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i100;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i101;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i23;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i99;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i94;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i37;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i76;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i77;
import 'package:load_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i36;
import 'package:load_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i71;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i52;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i54;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i60;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i62;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i70;
import 'package:load_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i73;
import 'package:load_question_server/src/repositories/implementations/user_lobby_activity_repository.dart'
    as _i75;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i78;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i9;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i51;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i53;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i61;
import 'package:load_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i72;
import 'package:load_question_server/src/repositories/interfaces/user_lobby_activity_repository.dart'
    as _i74;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i46;
import 'package:mapster/mapster.dart' as _i58;
import 'package:mediator/mediator.dart' as _i59;

import '../../env/env_module.dart' as _i112;
import '../third_party/mapster_module.dart' as _i113;
import '../third_party/mediator_module.dart' as _i114;

const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
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
  await gh.singletonAsync<_i4.DateTimeProvider>(
    () {
      final i = _i5.ProdDateTimeProvider();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i6.GameRepository>(
    _i7.TestGameRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.GameStateService>(
    _i8.GameStateService(
      gameRepository: gh<_i9.GameRepository>(),
      dateTimeProvider: gh<_i10.DateTimeProvider>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i11.GetAnswerCommandValidator>(
      _i11.GetAnswerCommandValidator());
  gh.singleton<_i12.GetLobbiesQueryValidator>(_i12.GetLobbiesQueryValidator());
  gh.singleton<_i13.GetLobbyQueryValidator>(_i13.GetLobbyQueryValidator());
  gh.singleton<_i14.GetStateQueryValidator>(_i14.GetStateQueryValidator());
  gh.singleton<_i15.GetUserQueryValidator>(_i15.GetUserQueryValidator());
  gh.singleton<_i16.GiveAnswerCommandValidator>(
      _i16.GiveAnswerCommandValidator());
  gh.singleton<_i17.HashService>(_i18.ProdHashService());
  gh.singleton<_i19.JoinLobbyCommandValidator>(
      _i19.JoinLobbyCommandValidator());
  gh.singleton<_i20.JsonConverter<_i21.SetReadyRequest, Map<String, Object?>>>(
      _i22.SetReadyRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i23.JoinLobbyRequest, Map<String, Object?>>>(
      _i24.JoinLobbyRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i25.LogOutRequest, Map<String, Object?>>>(
      _i26.LogOutRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.StartAnswerRequest, Map<String, Object?>>>(
      _i27.StartAnswerRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i23.ListenLobbyRequest, Map<String, Object?>>>(
      _i28.ListenLobbyRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i23.CreateLobbyRequest, Map<String, Object?>>>(
      _i29.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i23.GetLobbiesRequest, Map<String, Object?>>>(
      _i30.GetLobbiesRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i23.GetLobbyRequest, Map<String, Object?>>>(
      _i31.GetLobbyRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.GetStateRequest, Map<String, Object?>>>(
      _i32.GetStateRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i25.RegisterRequest, Map<String, Object?>>>(
      _i34.RegisterRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.SetNotReadyRequest, Map<String, Object?>>>(
      _i35.SetNotReadyRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i36.GetUserRequest, Map<String, Object?>>>(
      _i37.GetUserRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.StartRoundRequest, Map<String, Object?>>>(
      _i38.StartRoundRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.GetAnswerRequest, Map<String, Object?>>>(
      _i39.GetAnswerRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i25.VerifyTokenRequest, Map<String, Object?>>>(
      _i40.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.GiveAnswerRequest, Map<String, Object?>>>(
      _i41.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.ListenStateRequest, Map<String, Object?>>>(
      _i42.ListenStateRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.RestartRequest, Map<String, Object?>>>(
      _i43.RestartRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.SetLeaderRequest, Map<String, Object?>>>(
      _i44.SetLeaderRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i25.LogInRequest, Map<String, Object?>>>(
      _i45.LogInRequestJsonConverter());
  gh.singleton<_i46.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i47.JwtTokenService>(
      _i48.ProdJwtTokenService(gh<_i46.JwtSettings>()));
  gh.singleton<_i49.ListenLobbyQueryValidator>(
      _i49.ListenLobbyQueryValidator());
  gh.singleton<_i50.ListenStateQueryValidator>(
      _i50.ListenStateQueryValidator());
  gh.singleton<_i51.LobbyPasswordHashRepository>(
    _i52.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i53.LobbyRepository>(
    _i54.TestLobbyRepository(dateTimeProvider: gh<_i10.DateTimeProvider>()),
    registerFor: {_test},
  );
  gh.singleton<_i55.LobbyService>(
    _i55.LobbyService(
      lobbyRepository: gh<_i9.LobbyRepository>(),
      dateTimeProvider: gh<_i10.DateTimeProvider>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i56.LogInQueryValidator>(_i56.LogInQueryValidator());
  gh.singleton<_i57.LogOutCommandValidator>(_i57.LogOutCommandValidator());
  gh.singleton<_i58.Mapster>(mapsterModule.mapster);
  gh.singleton<_i59.Mediator>(mediatorModule.mediator);
  gh.singleton<_i9.PasswordHashRepository>(
    _i60.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i61.QuestionRepository>(
    _i62.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i63.RegisterCommandValidator>(_i63.RegisterCommandValidator());
  gh.singleton<_i64.RestartCommandValidator>(_i64.RestartCommandValidator());
  gh.singleton<_i65.SetLeaderCommandValidator>(
      _i65.SetLeaderCommandValidator());
  gh.singleton<_i66.SetNotReadyCommandValidator>(
      _i66.SetNotReadyCommandValidator());
  gh.singleton<_i67.SetReadyCommandValidator>(_i67.SetReadyCommandValidator());
  gh.singleton<_i68.StartAnswerCommandValidator>(
      _i68.StartAnswerCommandValidator());
  gh.singleton<_i69.StartRoundCommandValidator>(
      _i69.StartRoundCommandValidator());
  gh.singleton<_i9.TokenRepository>(
    _i70.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i71.UserController>(() => _i71.UserController(
        mediator: gh<_i59.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i72.UserGameStateActivityRepository>(
    _i73.TestUserGameStateActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i74.UserLobbyActivityRepository>(
    _i75.TestUserLobbyActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i76.UserMapsterRegistrar>(
      _i76.UserMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i77.UserMediatorRegistrar>(
      _i77.UserMediatorRegistrar(gh<_i59.Mediator>())..register());
  gh.singleton<_i9.UserRepository>(
    _i78.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i79.VerifyTokenQueryHandler>(_i79.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i80.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i81.VerifyTokenQueryValidator>(
      _i81.VerifyTokenQueryValidator());
  gh.factory<_i82.AuthController>(() => _i82.AuthController(
        mediator: gh<_i59.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i83.AuthMapsterRegistrar>(
      _i83.AuthMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i84.AuthMediatorRegistrar>(
      _i84.AuthMediatorRegistrar(gh<_i59.Mediator>())..register());
  gh.singleton<_i85.CreateLobbyCommandHandler>(_i85.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    hashService: gh<_i17.HashService>(),
  ));
  gh.factory<_i86.GameController>(() => _i86.GameController(
        mediator: gh<_i59.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i87.GameMapsterRegistrar>(
      _i87.GameMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i88.GameMediatorRegistrar>(
      _i88.GameMediatorRegistrar(gh<_i59.Mediator>())..register());
  gh.singleton<_i89.GetAnswerCommandHandler>(_i89.GetAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i90.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i91.GetLobbiesQueryHandler>(
      _i91.GetLobbiesQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i92.GetLobbyQueryHandler>(
      _i92.GetLobbyQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i93.GetStateQueryHandler>(_i93.GetStateQueryHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i90.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i94.GetUserQueryHandler>(
      _i94.GetUserQueryHandler(userRepository: gh<_i9.UserRepository>()));
  gh.singleton<_i95.GiveAnswerCommandHandler>(_i95.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i90.GameStateService>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i96.JoinLobbyCommandHandler>(_i96.JoinLobbyCommandHandler(
    lobbyService: gh<_i55.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    hashService: gh<_i17.HashService>(),
  ));
  gh.singleton<_i97.ListenLobbyQueryHandler>(_i97.ListenLobbyQueryHandler(
    lobbyService: gh<_i55.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
  ));
  gh.singleton<_i98.ListenStateQueryHandler>(_i98.ListenStateQueryHandler(
    gameStateService: gh<_i90.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.factory<_i99.LobbyController>(() => _i99.LobbyController(
        mediator: gh<_i59.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i100.LobbyMapsterRegistrar>(
      _i100.LobbyMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i101.LobbyMediatorRegistrar>(
      _i101.LobbyMediatorRegistrar(gh<_i59.Mediator>())..register());
  gh.singleton<_i102.LogInQueryHandler>(_i102.LogInQueryHandler(
    jwtTokenService: gh<_i80.JwtTokenService>(),
    hashService: gh<_i17.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i103.LogOutCommandHandler>(_i103.LogOutCommandHandler(
    jwtTokenService: gh<_i80.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i104.RegisterCommandHandler>(_i104.RegisterCommandHandler(
    jwtTokenService: gh<_i80.JwtTokenService>(),
    hashService: gh<_i105.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i106.RestartCommandHandler>(_i106.RestartCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i90.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i107.SetLeaderCommandHandler>(_i107.SetLeaderCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i90.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i108.SetNotReadyCommandHandler>(_i108.SetNotReadyCommandHandler(
    gameStateService: gh<_i90.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i109.SetReadyCommandHandler>(_i109.SetReadyCommandHandler(
    gameStateService: gh<_i90.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i110.StartAnswerCommandHandler>(_i110.StartAnswerCommandHandler(
    gameStateService: gh<_i90.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i111.StartRoundCommandHandler>(_i111.StartRoundCommandHandler(
    gameStateService: gh<_i90.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    questionRepository: gh<_i9.QuestionRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i112.EnvModule {}

class _$MapsterModule extends _i113.MapsterModule {}

class _$MediatorModule extends _i114.MediatorModule {}
