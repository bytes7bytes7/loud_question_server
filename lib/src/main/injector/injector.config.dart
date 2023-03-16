// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i17;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i29;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i64;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i65;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i41;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i63;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i35;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i48;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i50;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i49;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i30;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i24;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i19;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i16;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i52;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i53;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i15;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i51;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i11;
import 'package:load_question_server/src/features/common/common.dart' as _i66;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i12;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_handler.dart'
    as _i42;
import 'package:load_question_server/src/features/game/application/commands/set_not_ready/set_not_ready_command_validator.dart'
    as _i43;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_handler.dart'
    as _i44;
import 'package:load_question_server/src/features/game/application/commands/set_ready/set_ready_command_validator.dart'
    as _i45;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_not_ready_request_json_converter.dart'
    as _i23;
import 'package:load_question_server/src/features/game/infrastructure/json_converters/set_ready_request_json_converter.dart'
    as _i26;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mapster_registrar.dart'
    as _i56;
import 'package:load_question_server/src/features/game/infrastructure/third_party/mediator_registrar.dart'
    as _i57;
import 'package:load_question_server/src/features/game/presentation/contracts/contracts.dart'
    as _i22;
import 'package:load_question_server/src/features/game/presentation/controllers/game_controller.dart'
    as _i55;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i54;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i59;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_handler.dart'
    as _i58;
import 'package:load_question_server/src/features/lobby/application/queries/get_lobbies/get_lobbies_query_validator.dart'
    as _i10;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i21;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/get_lobbies_request_json_converter.dart'
    as _i27;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i25;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i61;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i62;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i20;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i60;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/game_repository.dart'
    as _i9;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i32;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i34;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i40;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i46;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i47;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/game_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i39;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i31;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i33;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i28;
import 'package:mapster/mapster.dart' as _i37;
import 'package:mediator/mediator.dart' as _i38;

import '../../env/env_module.dart' as _i67;
import '../third_party/mapster_module.dart' as _i68;
import '../third_party/mediator_module.dart' as _i69;

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
          _i14.JsonConverter<_i15.VerifyTokenRequest, Map<String, Object?>>>(
      _i16.VerifyTokenRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i15.RegisterRequest, Map<String, Object?>>>(
      _i18.RegisterRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i15.LogOutRequest, Map<String, Object?>>>(
      _i19.LogOutRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i20.CreateLobbyRequest, Map<String, Object?>>>(
      _i21.CreateLobbyRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i22.SetNotReadyRequest, Map<String, Object?>>>(
      _i23.SetNotReadyRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i15.LogInRequest, Map<String, Object?>>>(
      _i24.LogInRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i20.JoinLobbyRequest, Map<String, Object?>>>(
      _i25.JoinLobbyRequestJsonConverter());
  gh.singleton<_i14.JsonConverter<_i22.SetReadyRequest, Map<String, Object?>>>(
      _i26.SetReadyRequestJsonConverter());
  gh.singleton<
          _i14.JsonConverter<_i20.GetLobbiesRequest, Map<String, Object?>>>(
      _i27.GetLobbiesRequestJsonConverter());
  gh.singleton<_i28.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i29.JwtTokenService>(
      _i30.ProdJwtTokenService(gh<_i28.JwtSettings>()));
  gh.singleton<_i31.LobbyPasswordHashRepository>(
    _i32.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i33.LobbyRepository>(
    _i34.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i35.LogInQueryValidator>(_i35.LogInQueryValidator());
  gh.singleton<_i36.LogOutCommandValidator>(_i36.LogOutCommandValidator());
  gh.singleton<_i37.Mapster>(mapsterModule.mapster);
  gh.singleton<_i38.Mediator>(mediatorModule.mediator);
  gh.singleton<_i39.PasswordHashRepository>(
    _i40.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i41.RegisterCommandValidator>(_i41.RegisterCommandValidator());
  gh.singleton<_i42.SetNotReadyCommandHandler>(_i42.SetNotReadyCommandHandler(
      gameRepository: gh<_i39.GameRepository>()));
  gh.singleton<_i43.SetNotReadyCommandValidator>(
      _i43.SetNotReadyCommandValidator());
  gh.singleton<_i44.SetReadyCommandHandler>(
      _i44.SetReadyCommandHandler(gameRepository: gh<_i39.GameRepository>()));
  gh.singleton<_i45.SetReadyCommandValidator>(_i45.SetReadyCommandValidator());
  gh.singleton<_i39.TokenRepository>(
    _i46.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i39.UserRepository>(
    _i47.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i48.VerifyTokenQueryHandler>(_i48.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i49.JwtTokenService>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i50.VerifyTokenQueryValidator>(
      _i50.VerifyTokenQueryValidator());
  gh.factory<_i51.AuthController>(() => _i51.AuthController(
        mediator: gh<_i38.Mediator>(),
        mapster: gh<_i37.Mapster>(),
      ));
  gh.singleton<_i52.AuthMapsterRegistrar>(
      _i52.AuthMapsterRegistrar(gh<_i37.Mapster>())..register());
  gh.singleton<_i53.AuthMediatorRegistrar>(
      _i53.AuthMediatorRegistrar(gh<_i38.Mediator>())..register());
  gh.singleton<_i54.CreateLobbyCommandHandler>(_i54.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i39.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i39.LobbyPasswordHashRepository>(),
    hashService: gh<_i11.HashService>(),
  ));
  gh.factory<_i55.GameController>(() => _i55.GameController(
        mediator: gh<_i38.Mediator>(),
        mapster: gh<_i37.Mapster>(),
      ));
  gh.singleton<_i56.GameMapsterRegistrar>(
      _i56.GameMapsterRegistrar(gh<_i37.Mapster>())..register());
  gh.singleton<_i57.GameMediatorRegistrar>(
      _i57.GameMediatorRegistrar(gh<_i38.Mediator>())..register());
  gh.singleton<_i58.GetLobbiesQueryHandler>(
      _i58.GetLobbiesQueryHandler(lobbyRepository: gh<_i39.LobbyRepository>()));
  gh.singleton<_i59.JoinLobbyCommandHandler>(_i59.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i39.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i39.LobbyPasswordHashRepository>(),
    hashService: gh<_i11.HashService>(),
  ));
  gh.factory<_i60.LobbyController>(() => _i60.LobbyController(
        mediator: gh<_i38.Mediator>(),
        mapster: gh<_i37.Mapster>(),
      ));
  gh.singleton<_i61.LobbyMapsterRegistrar>(
      _i61.LobbyMapsterRegistrar(gh<_i37.Mapster>())..register());
  gh.singleton<_i62.LobbyMediatorRegistrar>(
      _i62.LobbyMediatorRegistrar(gh<_i38.Mediator>())..register());
  gh.singleton<_i63.LogInQueryHandler>(_i63.LogInQueryHandler(
    jwtTokenService: gh<_i49.JwtTokenService>(),
    hashService: gh<_i11.HashService>(),
    userRepository: gh<_i39.UserRepository>(),
    passwordHashRepository: gh<_i39.PasswordHashRepository>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i64.LogOutCommandHandler>(_i64.LogOutCommandHandler(
    jwtTokenService: gh<_i49.JwtTokenService>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i65.RegisterCommandHandler>(_i65.RegisterCommandHandler(
    jwtTokenService: gh<_i49.JwtTokenService>(),
    hashService: gh<_i66.HashService>(),
    userRepository: gh<_i39.UserRepository>(),
    passwordHashRepository: gh<_i39.PasswordHashRepository>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i67.EnvModule {}

class _$MapsterModule extends _i68.MapsterModule {}

class _$MediatorModule extends _i69.MediatorModule {}
