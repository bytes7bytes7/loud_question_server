// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i51;
import 'package:loud_question_server/src/features/auth/application/application.dart'
    as _i54;
import 'package:loud_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i117;
import 'package:loud_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i65;
import 'package:loud_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i118;
import 'package:loud_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i71;
import 'package:loud_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i116;
import 'package:loud_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i64;
import 'package:loud_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i91;
import 'package:loud_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i93;
import 'package:loud_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i92;
import 'package:loud_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i55;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i26;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i25;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i52;
import 'package:loud_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i50;
import 'package:loud_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i95;
import 'package:loud_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i96;
import 'package:loud_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i24;
import 'package:loud_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i94;
import 'package:loud_question_server/src/features/common/application/application.dart'
    as _i6;
import 'package:loud_question_server/src/features/common/application/providers/date_time_provider.dart'
    as _i12;
import 'package:loud_question_server/src/features/common/application/services/hash_service.dart'
    as _i20;
import 'package:loud_question_server/src/features/common/common.dart' as _i119;
import 'package:loud_question_server/src/features/common/domain/domain.dart'
    as _i98;
import 'package:loud_question_server/src/features/common/domain/services/game_state_service.dart'
    as _i10;
import 'package:loud_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i21;
import 'package:loud_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:loud_question_server/src/features/game/application/commands/change_question/change_question_command_handler.dart'
    as _i97;
import 'package:loud_question_server/src/features/game/application/commands/change_question/change_question_command_validator.dart'
    as _i4;
import 'package:loud_question_server/src/features/game/application/commands/get_answer/get_answer_command_handler.dart'
    as _i103;
import 'package:loud_question_server/src/features/game/application/commands/get_answer/get_answer_command_validator.dart'
    as _i13;
import 'package:loud_question_server/src/features/game/application/commands/give_answer/give_answer_command_handler.dart'
    as _i109;
import 'package:loud_question_server/src/features/game/application/commands/give_answer/give_answer_command_validator.dart'
    as _i19;
import 'package:loud_question_server/src/features/game/application/commands/restart/restart_command_handler.dart'
    as _i120;
import 'package:loud_question_server/src/features/game/application/commands/restart/restart_command_validator.dart'
    as _i72;
import 'package:loud_question_server/src/features/game/application/commands/set_leader/set_leader_command_handler.dart'
    as _i121;
import 'package:loud_question_server/src/features/game/application/commands/set_leader/set_leader_command_validator.dart'
    as _i73;
import 'package:loud_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i122;
import 'package:loud_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i74;
import 'package:loud_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i123;
import 'package:loud_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i75;
import 'package:loud_question_server/src/features/game/application/commands/start_answer/start_answer_command_handler.dart'
    as _i124;
import 'package:loud_question_server/src/features/game/application/commands/start_answer/start_answer_command_validator.dart'
    as _i78;
import 'package:loud_question_server/src/features/game/application/commands/start_round/start_round_command_handler.dart'
    as _i125;
import 'package:loud_question_server/src/features/game/application/commands/start_round/start_round_command_validator.dart'
    as _i79;
import 'package:loud_question_server/src/features/game/application/queries/get_state/get_state_query_handler.dart'
    as _i107;
import 'package:loud_question_server/src/features/game/application/queries/get_state/get_state_query_validator.dart'
    as _i17;
import 'package:loud_question_server/src/features/game/application/queries/listen_state/listen_state_query_handler.dart'
    as _i112;
import 'package:loud_question_server/src/features/game/application/queries/listen_state/listen_state_query_validator.dart'
    as _i58;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/change_question_request_json_converter.dart'
    as _i39;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/get_answer_request_json_converter.dart'
    as _i40;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/get_state_request_json_converter.dart'
    as _i41;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/give_answer_request_json_converter.dart'
    as _i42;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/listen_state_request_json_converter.dart'
    as _i37;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/restart_request_json_converter.dart'
    as _i44;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_leader_request_json_converter.dart'
    as _i45;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i46;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i47;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/start_answer_request_json_converter.dart'
    as _i48;
import 'package:loud_question_server/src/features/game/infrastructure/json_converters/start_round_request_json_converter.dart'
    as _i49;
import 'package:loud_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i101;
import 'package:loud_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i102;
import 'package:loud_question_server/src/features/game/presentation/contracts/change_question_request/change_question_request.dart'
    as _i38;
import 'package:loud_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i36;
import 'package:loud_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i100;
import 'package:loud_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i99;
import 'package:loud_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i5;
import 'package:loud_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i110;
import 'package:loud_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i22;
import 'package:loud_question_server/src/features/lobby/application/commands/upload_song/upload_song_command_handler.dart'
    as _i81;
import 'package:loud_question_server/src/features/lobby/application/commands/upload_song/upload_song_command_validator.dart'
    as _i82;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i104;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i14;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_handler.dart'
    as _i105;
import 'package:loud_question_server/src/features/lobby/application/queries/get_lobby/get_lobby_query_validator.dart'
    as _i15;
import 'package:loud_question_server/src/features/lobby/application/queries/get_song/get_song_query_handler.dart'
    as _i106;
import 'package:loud_question_server/src/features/lobby/application/queries/get_song/get_song_query_validator.dart'
    as _i16;
import 'package:loud_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_handler.dart'
    as _i111;
import 'package:loud_question_server/src/features/lobby/application/queries/listen_lobby/listen_lobby_query_validator.dart'
    as _i57;
import 'package:loud_question_server/src/features/lobby/domain/services/lobby_service.dart'
    as _i63;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i31;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i32;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_lobby_request_json_converter.dart'
    as _i33;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/get_song_request_json_converter.dart'
    as _i34;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i35;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/listen_lobby_request_json_converter.dart'
    as _i43;
import 'package:loud_question_server/src/features/lobby/infrastructure/json_converters/upload_song_request_json_converter.dart'
    as _i30;
import 'package:loud_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i114;
import 'package:loud_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i115;
import 'package:loud_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i29;
import 'package:loud_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i113;
import 'package:loud_question_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i108;
import 'package:loud_question_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i18;
import 'package:loud_question_server/src/features/user/infrastructure/json_converters/get_user_request_json_converter.dart'
    as _i28;
import 'package:loud_question_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i88;
import 'package:loud_question_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i89;
import 'package:loud_question_server/src/features/user/presentation/contracts/get_user_request/get_user_request.dart'
    as _i27;
import 'package:loud_question_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i83;
import 'package:loud_question_server/src/main/third_party/hive_module.dart'
    as _i3;
import 'package:loud_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:loud_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i60;
import 'package:loud_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i62;
import 'package:loud_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i68;
import 'package:loud_question_server/src/repositories/implementations/question_repository.dart'
    as _i70;
import 'package:loud_question_server/src/repositories/implementations/song_repository.dart'
    as _i77;
import 'package:loud_question_server/src/repositories/implementations/token_repository.dart'
    as _i80;
import 'package:loud_question_server/src/repositories/implementations/user_game_state_activity_repository.dart'
    as _i85;
import 'package:loud_question_server/src/repositories/implementations/user_lobby_activity_repository.dart'
    as _i87;
import 'package:loud_question_server/src/repositories/implementations/user_repository.dart'
    as _i90;
import 'package:loud_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:loud_question_server/src/repositories/interfaces/interfaces.dart'
    as _i11;
import 'package:loud_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i59;
import 'package:loud_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i61;
import 'package:loud_question_server/src/repositories/interfaces/question_repository.dart'
    as _i69;
import 'package:loud_question_server/src/repositories/interfaces/song_repository.dart'
    as _i76;
import 'package:loud_question_server/src/repositories/interfaces/user_game_state_activity_repository.dart'
    as _i84;
import 'package:loud_question_server/src/repositories/interfaces/user_lobby_activity_repository.dart'
    as _i86;
import 'package:loud_question_server/src/utils/jwt_settings.dart' as _i56;
import 'package:loud_question_server/src/utils/utils.dart' as _i53;
import 'package:mapster/mapster.dart' as _i66;
import 'package:mediator/mediator.dart' as _i67;

import '../../env/env_module.dart' as _i126;
import '../third_party/mapster_module.dart' as _i127;
import '../third_party/mediator_module.dart' as _i128;

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
  gh.singleton<_i3.HiveModule>(_i3.HiveModule()..init());
  gh.singleton<_i4.ChangeQuestionCommandValidator>(
      _i4.ChangeQuestionCommandValidator());
  gh.singleton<_i5.CreateLobbyCommandValidator>(
      _i5.CreateLobbyCommandValidator());
  await gh.singletonAsync<_i6.DateTimeProvider>(
    () {
      final i = _i7.ProdDateTimeProvider();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i8.GameRepository>(
    () {
      final i = _i9.ProdGameRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i10.GameStateService>(
    _i10.GameStateService(
      gameRepository: gh<_i11.GameRepository>(),
      dateTimeProvider: gh<_i12.DateTimeProvider>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i13.GetAnswerCommandValidator>(
      _i13.GetAnswerCommandValidator());
  gh.singleton<_i14.GetLobbiesQueryValidator>(_i14.GetLobbiesQueryValidator());
  gh.singleton<_i15.GetLobbyQueryValidator>(_i15.GetLobbyQueryValidator());
  gh.singleton<_i16.GetSongQueryValidator>(_i16.GetSongQueryValidator());
  gh.singleton<_i17.GetStateQueryValidator>(_i17.GetStateQueryValidator());
  gh.singleton<_i18.GetUserQueryValidator>(_i18.GetUserQueryValidator());
  gh.singleton<_i19.GiveAnswerCommandValidator>(
      _i19.GiveAnswerCommandValidator());
  gh.singleton<_i20.HashService>(_i21.ProdHashService());
  gh.singleton<_i22.JoinLobbyCommandValidator>(
      _i22.JoinLobbyCommandValidator());
  gh.singleton<_i23.JsonConverter<_i24.LogOutRequest, Map<String, Object?>>>(
      _i25.LogOutRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i24.LogInRequest, Map<String, Object?>>>(
      _i26.LogInRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i27.GetUserRequest, Map<String, Object?>>>(
      _i28.GetUserRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i29.UploadSongRequest, Map<String, Object?>>>(
      _i30.UploadSongRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i29.CreateLobbyRequest, Map<String, Object?>>>(
      _i31.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i29.GetLobbiesRequest, Map<String, Object?>>>(
      _i32.GetLobbiesRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i29.GetLobbyRequest, Map<String, Object?>>>(
      _i33.GetLobbyRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i29.GetSongRequest, Map<String, Object?>>>(
      _i34.GetSongRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i29.JoinLobbyRequest, Map<String, Object?>>>(
      _i35.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.ListenStateRequest, Map<String, Object?>>>(
      _i37.ListenStateRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i38.ChangeQuestionRequest, Map<String, Object?>>>(
      _i39.ChangeQuestionRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i36.GetAnswerRequest, Map<String, Object?>>>(
      _i40.GetAnswerRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i36.GetStateRequest, Map<String, Object?>>>(
      _i41.GetStateRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.GiveAnswerRequest, Map<String, Object?>>>(
      _i42.GiveAnswerRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i29.ListenLobbyRequest, Map<String, Object?>>>(
      _i43.ListenLobbyRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i36.RestartRequest, Map<String, Object?>>>(
      _i44.RestartRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i36.SetLeaderRequest, Map<String, Object?>>>(
      _i45.SetLeaderRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.SetNotReadyRequest, Map<String, Object?>>>(
      _i46.SetNotReadyRequestJsonConverter());
  gh.singleton<_i23.JsonConverter<_i36.SetReadyRequest, Map<String, Object?>>>(
      _i47.SetReadyRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.StartAnswerRequest, Map<String, Object?>>>(
      _i48.StartAnswerRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.StartRoundRequest, Map<String, Object?>>>(
      _i49.StartRoundRequestJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i24.VerifyTokenRequest, Map<String, Object?>>>(
      _i50.VerifyTokenRequestJsonConverter());
  gh.singleton<_i51.JsonConverter<_i24.RegisterRequest, Map<String, Object?>>>(
      _i52.RegisterRequestJsonConverter());
  gh.singleton<_i53.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i54.JwtTokenService>(
      _i55.ProdJwtTokenService(gh<_i56.JwtSettings>()));
  gh.singleton<_i57.ListenLobbyQueryValidator>(
      _i57.ListenLobbyQueryValidator());
  gh.singleton<_i58.ListenStateQueryValidator>(
      _i58.ListenStateQueryValidator());
  await gh.singletonAsync<_i59.LobbyPasswordHashRepository>(
    () {
      final i = _i60.ProdLobbyPasswordHashRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i61.LobbyRepository>(
    () {
      final i = _i62.ProdLobbyRepository(
          dateTimeProvider: gh<_i12.DateTimeProvider>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i63.LobbyService>(
    _i63.LobbyService(
      lobbyRepository: gh<_i11.LobbyRepository>(),
      dateTimeProvider: gh<_i12.DateTimeProvider>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i64.LogInQueryValidator>(_i64.LogInQueryValidator());
  gh.singleton<_i65.LogOutCommandValidator>(_i65.LogOutCommandValidator());
  gh.singleton<_i66.Mapster>(mapsterModule.mapster);
  gh.singleton<_i67.Mediator>(mediatorModule.mediator);
  await gh.singletonAsync<_i11.PasswordHashRepository>(
    () {
      final i = _i68.ProdPasswordHashRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i69.QuestionRepository>(
    () {
      final i = _i70.ProdQuestionRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i71.RegisterCommandValidator>(_i71.RegisterCommandValidator());
  gh.singleton<_i72.RestartCommandValidator>(_i72.RestartCommandValidator());
  gh.singleton<_i73.SetLeaderCommandValidator>(
      _i73.SetLeaderCommandValidator());
  gh.singleton<_i74.SetNotReadyCommandValidator>(
      _i74.SetNotReadyCommandValidator());
  gh.singleton<_i75.SetReadyCommandValidator>(_i75.SetReadyCommandValidator());
  gh.singleton<_i76.SongRepository>(_i77.ProdSongRepository());
  gh.singleton<_i78.StartAnswerCommandValidator>(
      _i78.StartAnswerCommandValidator());
  gh.singleton<_i79.StartRoundCommandValidator>(
      _i79.StartRoundCommandValidator());
  await gh.singletonAsync<_i11.TokenRepository>(
    () {
      final i = _i80.ProdTokenRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i81.UploadSongCommandHandler>(_i81.UploadSongCommandHandler());
  gh.singleton<_i82.UploadSongCommandValidator>(
      _i82.UploadSongCommandValidator());
  gh.factory<_i83.UserController>(() => _i83.UserController(
        mediator: gh<_i67.Mediator>(),
        mapster: gh<_i66.Mapster>(),
      ));
  await gh.singletonAsync<_i84.UserGameStateActivityRepository>(
    () {
      final i = _i85.ProdUserGameStateActivityRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i86.UserLobbyActivityRepository>(
    () {
      final i = _i87.ProdUserLobbyActivityRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i88.UserMapsterRegistrar>(
      _i88.UserMapsterRegistrar(gh<_i66.Mapster>())..register());
  gh.singleton<_i89.UserMediatorRegistrar>(
      _i89.UserMediatorRegistrar(gh<_i67.Mediator>())..register());
  await gh.singletonAsync<_i11.UserRepository>(
    () {
      final i = _i90.ProdUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i91.VerifyTokenQueryHandler>(_i91.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i92.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i93.VerifyTokenQueryValidator>(
      _i93.VerifyTokenQueryValidator());
  gh.factory<_i94.AuthController>(() => _i94.AuthController(
        mediator: gh<_i67.Mediator>(),
        mapster: gh<_i66.Mapster>(),
      ));
  gh.singleton<_i95.AuthMapsterRegistrar>(
      _i95.AuthMapsterRegistrar(gh<_i66.Mapster>())..register());
  gh.singleton<_i96.AuthMediatorRegistrar>(
      _i96.AuthMediatorRegistrar(gh<_i67.Mediator>())..register());
  gh.singleton<_i97.ChangeQuestionCommandHandler>(
      _i97.ChangeQuestionCommandHandler(
    gameStateService: gh<_i98.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    questionRepository: gh<_i11.QuestionRepository>(),
    dateTimeProvider: gh<_i6.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i99.CreateLobbyCommandHandler>(_i99.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    hashService: gh<_i20.HashService>(),
  ));
  gh.factory<_i100.GameController>(() => _i100.GameController(
        mediator: gh<_i67.Mediator>(),
        mapster: gh<_i66.Mapster>(),
      ));
  gh.singleton<_i101.GameMapsterRegistrar>(
      _i101.GameMapsterRegistrar(gh<_i66.Mapster>())..register());
  gh.singleton<_i102.GameMediatorRegistrar>(
      _i102.GameMediatorRegistrar(gh<_i67.Mediator>())..register());
  gh.singleton<_i103.GetAnswerCommandHandler>(_i103.GetAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i98.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i104.GetLobbiesQueryHandler>(_i104.GetLobbiesQueryHandler(
      lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i105.GetLobbyQueryHandler>(
      _i105.GetLobbyQueryHandler(lobbyRepository: gh<_i11.LobbyRepository>()));
  gh.singleton<_i106.GetSongQueryHandler>(
      _i106.GetSongQueryHandler(songRepository: gh<_i11.SongRepository>()));
  gh.singleton<_i107.GetStateQueryHandler>(_i107.GetStateQueryHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i98.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i108.GetUserQueryHandler>(
      _i108.GetUserQueryHandler(userRepository: gh<_i11.UserRepository>()));
  gh.singleton<_i109.GiveAnswerCommandHandler>(_i109.GiveAnswerCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i98.GameStateService>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i110.JoinLobbyCommandHandler>(_i110.JoinLobbyCommandHandler(
    lobbyService: gh<_i63.LobbyService>(),
    userLobbyActivityRepository: gh<_i11.UserLobbyActivityRepository>(),
    lobbyPasswordHashRepository: gh<_i11.LobbyPasswordHashRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    hashService: gh<_i20.HashService>(),
  ));
  gh.singleton<_i111.ListenLobbyQueryHandler>(_i111.ListenLobbyQueryHandler(
    lobbyService: gh<_i63.LobbyService>(),
    userLobbyActivityRepository: gh<_i11.UserLobbyActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
  ));
  gh.singleton<_i112.ListenStateQueryHandler>(_i112.ListenStateQueryHandler(
    gameStateService: gh<_i98.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.factory<_i113.LobbyController>(() => _i113.LobbyController(
        mediator: gh<_i67.Mediator>(),
        mapster: gh<_i66.Mapster>(),
      ));
  gh.singleton<_i114.LobbyMapsterRegistrar>(
      _i114.LobbyMapsterRegistrar(gh<_i66.Mapster>())..register());
  gh.singleton<_i115.LobbyMediatorRegistrar>(
      _i115.LobbyMediatorRegistrar(gh<_i67.Mediator>())..register());
  gh.singleton<_i116.LogInQueryHandler>(_i116.LogInQueryHandler(
    jwtTokenService: gh<_i92.JwtTokenService>(),
    hashService: gh<_i20.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i117.LogOutCommandHandler>(_i117.LogOutCommandHandler(
    jwtTokenService: gh<_i92.JwtTokenService>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i118.RegisterCommandHandler>(_i118.RegisterCommandHandler(
    jwtTokenService: gh<_i92.JwtTokenService>(),
    hashService: gh<_i119.HashService>(),
    userRepository: gh<_i11.UserRepository>(),
    passwordHashRepository: gh<_i11.PasswordHashRepository>(),
    tokenRepository: gh<_i11.TokenRepository>(),
  ));
  gh.singleton<_i120.RestartCommandHandler>(_i120.RestartCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i98.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i121.SetLeaderCommandHandler>(_i121.SetLeaderCommandHandler(
    lobbyRepository: gh<_i11.LobbyRepository>(),
    gameStateService: gh<_i98.GameStateService>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i122.SetNotReadyCommandHandler>(_i122.SetNotReadyCommandHandler(
    gameStateService: gh<_i98.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i123.SetReadyCommandHandler>(_i123.SetReadyCommandHandler(
    gameStateService: gh<_i98.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i124.StartAnswerCommandHandler>(_i124.StartAnswerCommandHandler(
    gameStateService: gh<_i98.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i66.Mapster>(),
  ));
  gh.singleton<_i125.StartRoundCommandHandler>(_i125.StartRoundCommandHandler(
    gameStateService: gh<_i98.GameStateService>(),
    lobbyRepository: gh<_i11.LobbyRepository>(),
    questionRepository: gh<_i11.QuestionRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
    userGameStateActivityRepository: gh<_i11.UserGameStateActivityRepository>(),
    mapster: gh<_i66.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i126.EnvModule {}

class _$MapsterModule extends _i127.MapsterModule {}

class _$MediatorModule extends _i128.MediatorModule {}
