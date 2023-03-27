// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i27;
import 'package:loud_question_server/src/features/auth/application/application.dart'
    as _i49;
import 'package:loud_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i104;
import 'package:loud_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i60;
import 'package:loud_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i108;
import 'package:loud_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i64;
import 'package:loud_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i103;
import 'package:loud_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i59;
import 'package:loud_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i80;
import 'package:loud_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i82;
import 'package:loud_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i81;
import 'package:loud_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i50;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i29;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i36;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i28;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i26;
import 'package:loud_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i84;
import 'package:loud_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i85;
import 'package:loud_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i25;
import 'package:loud_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i83;
import 'package:loud_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:loud_question_server/src/features/common/application/providers/date_time_provider.dart'
    as _i10;
import 'package:loud_question_server/src/features/common/application/services/hash_service.dart'
    as _i18;
import 'package:loud_question_server/src/features/common/common.dart' as _i109;
import 'package:loud_question_server/src/features/common/domain/domain.dart'
    as _i91;
import 'package:loud_question_server/src/features/common/domain/services/game_state_service.dart'
    as _i8;
import 'package:loud_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i19;
import 'package:loud_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:loud_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i90;
import 'package:loud_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i11;
import 'package:loud_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i96;
import 'package:loud_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i17;
import 'package:loud_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i110;
import 'package:loud_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i65;
import 'package:loud_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i111;
import 'package:loud_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i66;
import 'package:loud_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i112;
import 'package:loud_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i67;
import 'package:loud_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i113;
import 'package:loud_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i68;
import 'package:loud_question_server/src/features/game/application/commands/start_answer/start_answer_command_handler.dart'
    as _i117;
import 'package:loud_question_server/src/features/game/application/commands/start_answer/start_answer_command_validator.dart'
    as _i69;
import 'package:loud_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i118;
import 'package:loud_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i70;
import 'package:loud_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i94;
import 'package:loud_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i15;
import 'package:loud_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i99;
import 'package:loud_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i53;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i40;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i41;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i42;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i43;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i44;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i45;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i46;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i47;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/start_answer_request_json_converter.dart'
    as _i23;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i24;
import 'package:loud_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i88;
import 'package:loud_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i89;
import 'package:loud_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i22;
import 'package:loud_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i87;
import 'package:loud_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i86;
import 'package:loud_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:loud_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i97;
import 'package:loud_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i20;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i92;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i12;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_handler.dart'
    as _i93;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_validator.dart'
    as _i13;
import 'package:loud_question_server/src/features/lobby/application/queries/get_song/get_song_query_handler.dart'
    as _i119;
import 'package:loud_question_server/src/features/lobby/application/queries/get_song/get_song_query_validator.dart'
    as _i14;
import 'package:loud_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_handler.dart'
    as _i98;
import 'package:loud_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_validator.dart'
    as _i52;
import 'package:loud_question_server/src/features/lobby/domain/services/lobby_service.dart'
    as _i58;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i34;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i35;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_lobby_request_json_converter.dart'
    as _i33;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_song_request_json_converter.dart'
    as _i37;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i38;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/listen_lobby_request_json_converter.dart'
    as _i39;
import 'package:loud_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i101;
import 'package:loud_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i102;
import 'package:loud_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i32;
import 'package:loud_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i100;
import 'package:loud_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i95;
import 'package:loud_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i16;
import 'package:loud_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i31;
import 'package:loud_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i77;
import 'package:loud_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i78;
import 'package:loud_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i30;
import 'package:loud_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i72;
import 'package:loud_question_server/src/repositories/implementations/game_repository.dart'
    as _i7;
import 'package:loud_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i55;
import 'package:loud_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i57;
import 'package:loud_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i63;
import 'package:loud_question_server/src/repositories/implementations/question_repository.dart'
    as _i106;
import 'package:loud_question_server/src/repositories/implementations/song_repository.dart'
    as _i115;
import 'package:loud_question_server/src/repositories/implementations/token_repository.dart'
    as _i71;
import 'package:loud_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i74;
import 'package:loud_question_server/src/repositories/implementations/user_lobby_activity_repository.dart'
    as _i76;
import 'package:loud_question_server/src/repositories/implementations/user_repository.dart'
    as _i79;
import 'package:loud_question_server/src/repositories/interfaces/game_repository.dart'
    as _i6;
import 'package:loud_question_server/src/repositories/interfaces/interfaces.dart'
    as _i9;
import 'package:loud_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i54;
import 'package:loud_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i56;
import 'package:loud_question_server/src/repositories/interfaces/question_repository.dart'
    as _i105;
import 'package:loud_question_server/src/repositories/interfaces/song_repository.dart'
    as _i114;
import 'package:loud_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i73;
import 'package:loud_question_server/src/repositories/interfaces/user_lobby_activity_repository.dart'
    as _i75;
import 'package:loud_question_server/src/utils/jwt_settings.dart' as _i51;
import 'package:loud_question_server/src/utils/question_settings.dart' as _i107;
import 'package:loud_question_server/src/utils/song_settings.dart' as _i116;
import 'package:loud_question_server/src/utils/utils.dart' as _i48;
import 'package:mapster/mapster.dart' as _i61;
import 'package:mediator/mediator.dart' as _i62;

import '../../env/env_module.dart' as _i120;
import '../third_party/mapster_module.dart' as _i121;
import '../third_party/mediator_module.dart' as _i122;

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
  await gh.singletonAsync<_i6.GameRepository>(
    () {
      final i = _i7.ProdGameRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
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
          _i21.JsonConverter<_i22.StartAnswerRequest, Map<String, Object?>>>(
      _i23.StartAnswerRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.StartRoundRequest, Map<String, Object?>>>(
      _i24.StartRoundRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i25.VerifyTokenRequest, Map<String, Object?>>>(
      _i26.VerifyTokenRequestJsonConverter());
  gh.singleton<_i27.JsonConverter<_i25.RegisterRequest, Map<String, Object?>>>(
      _i28.RegisterRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i25.LogInRequest, Map<String, Object?>>>(
      _i29.LogInRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i30.GetUserRequest, Map<String, Object?>>>(
      _i31.GetUserRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i32.GetLobbyRequest, Map<String, Object?>>>(
      _i33.GetLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i32.CreateLobbyRequest, Map<String, Object?>>>(
      _i34.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i32.GetLobbiesRequest, Map<String, Object?>>>(
      _i35.GetLobbiesRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i25.LogOutRequest, Map<String, Object?>>>(
      _i36.LogOutRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i32.GetSongRequest, Map<String, Object?>>>(
      _i37.GetSongRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i32.JoinLobbyRequest, Map<String, Object?>>>(
      _i38.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i32.ListenLobbyRequest, Map<String, Object?>>>(
      _i39.ListenLobbyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.GetAnswerRequest, Map<String, Object?>>>(
      _i40.GetAnswerRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.GetStateRequest, Map<String, Object?>>>(
      _i41.GetStateRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.GiveAnswerRequest, Map<String, Object?>>>(
      _i42.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.ListenStateRequest, Map<String, Object?>>>(
      _i43.ListenStateRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.RestartRequest, Map<String, Object?>>>(
      _i44.RestartRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.SetLeaderRequest, Map<String, Object?>>>(
      _i45.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.SetNotReadyRequest, Map<String, Object?>>>(
      _i46.SetNotReadyRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.SetReadyRequest, Map<String, Object?>>>(
      _i47.SetReadyRequestJsonConverter());
  gh.singleton<_i48.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i49.JwtTokenService>(
      _i50.ProdJwtTokenService(gh<_i51.JwtSettings>()));
  gh.singleton<_i52.ListenLobbyQueryValidator>(
      _i52.ListenLobbyQueryValidator());
  gh.singleton<_i53.ListenStateQueryValidator>(
      _i53.ListenStateQueryValidator());
  await gh.singletonAsync<_i54.LobbyPasswordHashRepository>(
    () {
      final i = _i55.ProdLobbyPasswordHashRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i56.LobbyRepository>(
    () {
      final i = _i57.ProdLobbyRepository(
          dateTimeProvider: gh<_i10.DateTimeProvider>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
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
  await gh.singletonAsync<_i9.PasswordHashRepository>(
    () {
      final i = _i63.ProdPasswordHashRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i48.QuestionSettings>(envModule.questionSettings);
  gh.singleton<_i64.RegisterCommandValidator>(_i64.RegisterCommandValidator());
  gh.singleton<_i65.RestartCommandValidator>(_i65.RestartCommandValidator());
  gh.singleton<_i66.SetLeaderCommandValidator>(
      _i66.SetLeaderCommandValidator());
  gh.singleton<_i67.SetNotReadyCommandValidator>(
      _i67.SetNotReadyCommandValidator());
  gh.singleton<_i68.SetReadyCommandValidator>(_i68.SetReadyCommandValidator());
  gh.singleton<_i48.SongSettings>(envModule.songSettings);
  gh.singleton<_i69.StartAnswerCommandValidator>(
      _i69.StartAnswerCommandValidator());
  gh.singleton<_i70.StartRoundCommandValidator>(
      _i70.StartRoundCommandValidator());
  await gh.singletonAsync<_i9.TokenRepository>(
    () {
      final i = _i71.ProdTokenRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i72.UserController>(() => _i72.UserController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  await gh.singletonAsync<_i73.UserGameStateActivityRepository>(
    () {
      final i = _i74.ProdUserGameStateActivityRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i75.UserLobbyActivityRepository>(
    () {
      final i = _i76.ProdUserLobbyActivityRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i77.UserMapsterRegistrar>(
      _i77.UserMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i78.UserMediatorRegistrar>(
      _i78.UserMediatorRegistrar(gh<_i62.Mediator>())..register());
  await gh.singletonAsync<_i9.UserRepository>(
    () {
      final i = _i79.ProdUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i80.VerifyTokenQueryHandler>(_i80.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i82.VerifyTokenQueryValidator>(
      _i82.VerifyTokenQueryValidator());
  gh.factory<_i83.AuthController>(() => _i83.AuthController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i84.AuthMapsterRegistrar>(
      _i84.AuthMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i85.AuthMediatorRegistrar>(
      _i85.AuthMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i86.CreateLobbyCommandHandler>(_i86.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.factory<_i87.GameController>(() => _i87.GameController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i88.GameMapsterRegistrar>(
      _i88.GameMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i89.GameMediatorRegistrar>(
      _i89.GameMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i90.GetAnswerCommandHandler>(_i90.GetAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i92.GetLobbiesQueryHandler>(
      _i92.GetLobbiesQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i93.GetLobbyQueryHandler>(
      _i93.GetLobbyQueryHandler(lobbyRepository: gh<_i9.LobbyRepository>()));
  gh.singleton<_i94.GetStateQueryHandler>(_i94.GetStateQueryHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i95.GetUserQueryHandler>(
      _i95.GetUserQueryHandler(userRepository: gh<_i9.UserRepository>()));
  gh.singleton<_i96.GiveAnswerCommandHandler>(_i96.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i97.JoinLobbyCommandHandler>(_i97.JoinLobbyCommandHandler(
    lobbyService: gh<_i58.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    lobbyPasswordHashRepository: gh<_i9.LobbyPasswordHashRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    hashService: gh<_i18.HashService>(),
  ));
  gh.singleton<_i98.ListenLobbyQueryHandler>(_i98.ListenLobbyQueryHandler(
    lobbyService: gh<_i58.LobbyService>(),
    userLobbyActivityRepository: gh<_i9.UserLobbyActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
  ));
  gh.singleton<_i99.ListenStateQueryHandler>(_i99.ListenStateQueryHandler(
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.factory<_i100.LobbyController>(() => _i100.LobbyController(
        mediator: gh<_i62.Mediator>(),
        mapster: gh<_i61.Mapster>(),
      ));
  gh.singleton<_i101.LobbyMapsterRegistrar>(
      _i101.LobbyMapsterRegistrar(gh<_i61.Mapster>())..register());
  gh.singleton<_i102.LobbyMediatorRegistrar>(
      _i102.LobbyMediatorRegistrar(gh<_i62.Mediator>())..register());
  gh.singleton<_i103.LogInQueryHandler>(_i103.LogInQueryHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    hashService: gh<_i18.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i104.LogOutCommandHandler>(_i104.LogOutCommandHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  await gh.singletonAsync<_i105.QuestionRepository>(
    () {
      final i = _i106.ProdQuestionRepository(
          questionSettings: gh<_i107.QuestionSettings>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i108.RegisterCommandHandler>(_i108.RegisterCommandHandler(
    jwtTokenService: gh<_i81.JwtTokenService>(),
    hashService: gh<_i109.HashService>(),
    userRepository: gh<_i9.UserRepository>(),
    passwordHashRepository: gh<_i9.PasswordHashRepository>(),
    tokenRepository: gh<_i9.TokenRepository>(),
  ));
  gh.singleton<_i110.RestartCommandHandler>(_i110.RestartCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i111.SetLeaderCommandHandler>(_i111.SetLeaderCommandHandler(
    lobbyRepository: gh<_i9.LobbyRepository>(),
    gameStateService: gh<_i91.GameStateService>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i112.SetNotReadyCommandHandler>(_i112.SetNotReadyCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i113.SetReadyCommandHandler>(_i113.SetReadyCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i114.SongRepository>(
      _i115.ProdSongRepository(songSettings: gh<_i116.SongSettings>()));
  gh.singleton<_i117.StartAnswerCommandHandler>(_i117.StartAnswerCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i118.StartRoundCommandHandler>(_i118.StartRoundCommandHandler(
    gameStateService: gh<_i91.GameStateService>(),
    lobbyRepository: gh<_i9.LobbyRepository>(),
    questionRepository: gh<_i9.QuestionRepository>(),
    dateTimeProvider: gh<_i10.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i9.UserGameStateActivityRepository>(),
    mapster: gh<_i61.Mapster>(),
  ));
  gh.singleton<_i119.GetSongQueryHandler>(
      _i119.GetSongQueryHandler(songRepository: gh<_i9.SongRepository>()));
  return getIt;
}

class _$EnvModule extends _i120.EnvModule {}

class _$MapsterModule extends _i121.MapsterModule {}

class _$MediatorModule extends _i122.MediatorModule {}
