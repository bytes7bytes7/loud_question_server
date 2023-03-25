// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i30;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i49;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i106;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i60;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i107;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i66;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i105;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i59;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i82;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i84;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i83;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i50;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i33;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i31;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i29;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i86;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i87;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i85;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/providers/date_time_provider.dart'
    as _i10;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i18;
import 'package:load_question_server/src/features/common/common.dart' as _i108;
import 'package:load_question_server/src/features/common/domain/domain.dart'
    as _i93;
import 'package:load_question_server/src/features/common/domain/services/game_state_service.dart'
    as _i8;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i19;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i92;
import 'package:load_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i11;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i98;
import 'package:load_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i17;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i109;
import 'package:load_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i67;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i110;
import 'package:load_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i68;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i111;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i69;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i112;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i70;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_handler.dart'
    as _i116;
import 'package:load_question_server/src/features/game/application/commands/start_answer/start_answer_command_validator.dart'
    as _i71;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i117;
import 'package:load_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i72;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i96;
import 'package:load_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i15;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i101;
import 'package:load_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i53;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i39;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i40;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i41;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i42;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i43;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i44;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i45;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i46;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_answer_request_json_converter.dart'
    as _i47;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i90;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i91;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i22;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i89;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i88;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i99;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i20;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i94;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i12;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_handler.dart'
    as _i95;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/application/queries/get_song/get_song_query_handler.dart'
    as _i118;
import 'package:load_question_server/src/features/lobby/application/queries/get_song/get_song_query_validator.dart'
    as _i14;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_handler.dart'
    as _i100;
import 'package:load_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_validator.dart'
    as _i52;
import 'package:load_question_server/src/features/lobby/domain/services/lobby_service.dart'
    as _i58;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i37;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i38;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobby_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_song_request_json_converter.dart'
    as _i36;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i34;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/listen_lobby_request_json_converter.dart'
    as _i35;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i103;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i104;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i24;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i102;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i97;
import 'package:load_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i16;
import 'package:load_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i27;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i79;
import 'package:load_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i80;
import 'package:load_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i26;
import 'package:load_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i74;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i55;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i57;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i63;
import 'package:load_question_server/src/repositories/implementations/question_repository.dart'
    as _i65;
import 'package:load_question_server/src/repositories/implementations/song_repository.dart'
    as _i114;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i73;
import 'package:load_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i76;
import 'package:load_question_server/src/repositories/implementations/user_lobby_activity_repository.dart'
    as _i78;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i81;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i9;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i54;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i56;
import 'package:load_question_server/src/repositories/interfaces/question_repository.dart'
    as _i64;
import 'package:load_question_server/src/repositories/interfaces/song_repository.dart'
    as _i113;
import 'package:load_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i75;
import 'package:load_question_server/src/repositories/interfaces/user_lobby_activity_repository.dart'
    as _i77;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i51;
import 'package:load_question_server/src/utils/song_settings.dart' as _i115;
import 'package:load_question_server/src/utils/utils.dart' as _i48;
import 'package:mapster/mapster.dart' as _i61;
import 'package:mediator/mediator.dart' as _i62;

import '../../env/env_module.dart' as _i119;
import '../third_party/mapster_module.dart' as _i120;
import '../third_party/mediator_module.dart' as _i121;

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
  gh.singleton<_i14.GetSongQueryValidator>(_i14.GetSongQueryValidator());
  gh.singleton<_i15.GetStateQueryValidator>(_i15.GetStateQueryValidator());
  gh.singleton<_i16.GetUserQueryValidator>(_i16.GetUserQueryValidator());
  gh.singleton<_i17.GiveAnswerCommandValidator>(
      _i17.GiveAnswerCommandValidator());
  gh.singleton<_i18.HashService>(_i19.ProdHashService());
  gh.singleton<_i20.JoinLobbyCommandValidator>(
      _i20.JoinLobbyCommandValidator());
  gh.singleton<
          _i21.JsonConverter<_i22.StartRoundRequest, Map<String, Object?>>>(
      _i23.StartRoundRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetLobbyRequest, Map<String, Object?>>>(
      _i25.GetLobbyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i26.GetUserRequest, Map<String, Object?>>>(
      _i27.GetUserRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i28.VerifyTokenRequest, Map<String, Object?>>>(
      _i29.VerifyTokenRequestJsonConverter());
  gh.singleton<_i30.JsonConverter<_i28.RegisterRequest, Map<String, Object?>>>(
      _i31.RegisterRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i28.LogOutRequest, Map<String, Object?>>>(
      _i32.LogOutRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i28.LogInRequest, Map<String, Object?>>>(
      _i33.LogInRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.JoinLobbyRequest, Map<String, Object?>>>(
      _i34.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.ListenLobbyRequest, Map<String, Object?>>>(
      _i35.ListenLobbyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetSongRequest, Map<String, Object?>>>(
      _i36.GetSongRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.CreateLobbyRequest, Map<String, Object?>>>(
      _i37.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i24.GetLobbiesRequest, Map<String, Object?>>>(
      _i38.GetLobbiesRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.GetAnswerRequest, Map<String, Object?>>>(
      _i39.GetAnswerRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.GetStateRequest, Map<String, Object?>>>(
      _i40.GetStateRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.GiveAnswerRequest, Map<String, Object?>>>(
      _i41.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.ListenStateRequest, Map<String, Object?>>>(
      _i42.ListenStateRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.RestartRequest, Map<String, Object?>>>(
      _i43.RestartRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.SetLeaderRequest, Map<String, Object?>>>(
      _i44.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.SetNotReadyRequest, Map<String, Object?>>>(
      _i45.SetNotReadyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.SetReadyRequest, Map<String, Object?>>>(
      _i46.SetReadyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.StartAnswerRequest, Map<String, Object?>>>(
      _i47.StartAnswerRequestJsonConverter());
  gh.singleton<_i48.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i49.JwtTokenService>(
      _i50.ProdJwtTokenService(gh<_i51.JwtSettings>()));
  gh.singleton<_i52.ListenLobbyQueryValidator>(
      _i52.ListenLobbyQueryValidator());
  gh.singleton<_i53.ListenStateQueryValidator>(
      _i53.ListenStateQueryValidator());
  gh.singleton<_i54.LobbyPasswordHashRepository>(
    _i55.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i56.LobbyRepository>(
    _i57.TestLobbyRepository(dateTimeProvider: gh<_i10.DateTimeProvider>()),
    registerFor: {_test},
  );
  gh.singleton<_i58.LobbyService>(
    _i58.LobbyService(
      lobbyRepository: gh<_i9.LobbyRepository>(),
      dateTimeProvider: gh<_i10.DateTimeProvider>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i59.LogInQueryValidator>(_i59.LogInQueryValidator());
  gh.singleton<_i60.LogOutCommandValidator>(_i60.LogOutCommandValidator());
  gh.singleton<_i61.Mapster>(mapsterModule.mapster);
  gh.singleton<_i62.Mediator>(mediatorModule.mediator);
  gh.singleton<_i9.PasswordHashRepository>(
    _i63.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i64.QuestionRepository>(
    _i65.TestQuestionRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i66.RegisterCommandValidator>(_i66.RegisterCommandValidator());
  gh.singleton<_i67.RestartCommandValidator>(_i67.RestartCommandValidator());
  gh.singleton<_i68.SetLeaderCommandValidator>(
      _i68.SetLeaderCommandValidator());
  gh.singleton<_i69.SetNotReadyCommandValidator>(
      _i69.SetNotReadyCommandValidator());
  gh.singleton<_i70.SetReadyCommandValidator>(_i70.SetReadyCommandValidator());
  gh.singleton<_i48.SongSettings>(envModule.songSettings);
  gh.singleton<_i71.StartAnswerCommandValidator>(
      _i71.StartAnswerCommandValidator());
  gh.singleton<_i72.StartRoundCommandValidator>(
      _i72.StartRoundCommandValidator());
  gh.singleton<_i9.TokenRepository>(
    _i73.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i74.UserController>(() => _i74.UserController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i75.UserGameStateActivityRepository>(
    _i76.TestUserGameStateActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i77.UserLobbyActivityRepository>(
    _i78.TestUserLobbyActivityRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i79.UserMapsterRegistrar>(
      _i79.UserMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i80.UserMediatorRegistrar>(
      _i80.UserMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i9.UserRepository>(
    _i81.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i82.VerifyTokenQueryHandler>(_i82.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i83.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i84.VerifyTokenQueryValidator>(
      _i84.VerifyTokenQueryValidator());
  gh.factory<_i85.AuthController>(() => _i85.AuthController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i86.AuthMapsterRegistrar>(
      _i86.AuthMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i87.AuthMediatorRegistrar>(
      _i87.AuthMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i88.CreateLobbyCommandHandler>(_i88.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.factory<_i89.GameController>(() => _i89.GameController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i90.GameMapsterRegistrar>(
      _i90.GameMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i91.GameMediatorRegistrar>(
      _i91.GameMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i92.GetAnswerCommandHandler>(_i92.GetAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i93.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i94.GetLobbiesQueryHandler>(
      _i94.GetLobbiesQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i95.GetLobbyQueryHandler>(
      _i95.GetLobbyQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i96.GetStateQueryHandler>(_i96.GetStateQueryHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i93.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i97.GetUserQueryHandler>(
      _i97.GetUserQueryHandler(userRepository: gh<_i9.UserRepository>()));
  gh.singleton<_i98.GiveAnswerCommandHandler>(_i98.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i93.GameStateService>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i99.JoinLobbyCommandHandler>(_i99.JoinLobbyCommandHandler(
    lobbyService: gh<_i58.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.singleton<_i100.ListenLobbyQueryHandler>(_i100.ListenLobbyQueryHandler(
    lobbyService: gh<_i58.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
  ));
  gh.singleton<_i101.ListenStateQueryHandler>(_i101.ListenStateQueryHandler(
    gameStateService: gh<_i93.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.factory<_i102.LobbyController>(() => _i102.LobbyController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i103.LobbyMapsterRegistrar>(
      _i103.LobbyMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i104.LobbyMediatorRegistrar>(
      _i104.LobbyMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i105.LogInQueryHandler>(_i105.LogInQueryHandler(
    jwtTokenService: gh<_i83.JwtTokenService>(),
    hashService: gh<_i18.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i106.LogOutCommandHandler>(_i106.LogOutCommandHandler(
    jwtTokenService: gh<_i83.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i107.RegisterCommandHandler>(_i107.RegisterCommandHandler(
    jwtTokenService: gh<_i83.JwtTokenService>(),
    hashService: gh<_i108.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i109.RestartCommandHandler>(_i109.RestartCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i93.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i110.SetLeaderCommandHandler>(_i110.SetLeaderCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i93.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i111.SetNotReadyCommandHandler>(_i111.SetNotReadyCommandHandler(
    gameStateService: gh<_i93.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i112.SetReadyCommandHandler>(_i112.SetReadyCommandHandler(
    gameStateService: gh<_i93.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i113.SongRepository>(
      _i114.ProdSongRepository(songSettings: gh<_i115.SongSettings>()));
  gh.singleton<_i116.StartAnswerCommandHandler>(_i116.StartAnswerCommandHandler(
    gameStateService: gh<_i93.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i117.StartRoundCommandHandler>(_i117.StartRoundCommandHandler(
    gameStateService: gh<_i93.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    questionRepository: gh<_i9.QuestionRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i118.GetSongQueryHandler>(
      _i118.GetSongQueryHandler(songRepository: gh<_i9.SongRepository>()));
  return getIt;
}

class _$EnvModule extends _i119.EnvModule {}

class _$MapsterModule extends _i120.MapsterModule {}

class _$MediatorModule extends _i121.MediatorModule {}
