// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i18;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i22;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i49;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i29;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i50;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i34;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i48;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i39;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i38;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i23;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i16;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i19;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i20;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i41;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i42;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i15;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i40;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i8;
import 'package:load_question_server/src/features/common/common.dart' as _i51;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i9;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i43;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_handler.dart'
    as _i44;
import 'package:load_question_server/src/features/lobby/application/commands/join_lobby/join_lobby_command_validator.dart'
    as _i10;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i14;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/join_lobby_request_json_converter.dart'
    as _i13;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i46;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i47;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i12;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i45;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i25;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i27;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i33;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i35;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i36;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i32;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i24;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i26;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i21;
import 'package:mapster/mapster.dart' as _i30;
import 'package:mediator/mediator.dart' as _i31;

import '../../env/env_module.dart' as _i52;
import '../third_party/mapster_module.dart' as _i53;
import '../third_party/mediator_module.dart' as _i54;

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
  gh.singleton<_i8.HashService>(_i9.ProdHashService());
  gh.singleton<_i10.JoinLobbyCommandValidator>(
      _i10.JoinLobbyCommandValidator());
  gh.singleton<_i11.JsonConverter<_i12.JoinLobbyRequest, Map<String, Object?>>>(
      _i13.JoinLobbyRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i12.CreateLobbyRequest, Map<String, Object?>>>(
      _i14.CreateLobbyRequestJsonConverter());
  gh.singleton<_i11.JsonConverter<_i15.LogInRequest, Map<String, Object?>>>(
      _i16.LogInRequestJsonConverter());
  gh.singleton<_i11.JsonConverter<_i15.LogOutRequest, Map<String, Object?>>>(
      _i17.LogOutRequestJsonConverter());
  gh.singleton<_i18.JsonConverter<_i15.RegisterRequest, Map<String, Object?>>>(
      _i19.RegisterRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i15.VerifyTokenRequest, Map<String, Object?>>>(
      _i20.VerifyTokenRequestJsonConverter());
  gh.singleton<_i21.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i22.JwtTokenService>(
      _i23.ProdJwtTokenService(gh<_i21.JwtSettings>()));
  gh.singleton<_i24.LobbyPasswordHashRepository>(
    _i25.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i26.LobbyRepository>(
    _i27.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i28.LogInQueryValidator>(_i28.LogInQueryValidator());
  gh.singleton<_i29.LogOutCommandValidator>(_i29.LogOutCommandValidator());
  gh.singleton<_i30.Mapster>(mapsterModule.mapster);
  gh.singleton<_i31.Mediator>(mediatorModule.mediator);
  gh.singleton<_i32.PasswordHashRepository>(
    _i33.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i34.RegisterCommandValidator>(_i34.RegisterCommandValidator());
  gh.singleton<_i32.TokenRepository>(
    _i35.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i32.UserRepository>(
    _i36.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i37.VerifyTokenQueryHandler>(_i37.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i39.VerifyTokenQueryValidator>(
      _i39.VerifyTokenQueryValidator());
  gh.factory<_i40.AuthController>(() => _i40.AuthController(
        mediator: gh<_i31.Mediator>(),
        mapster: gh<_i30.Mapster>(),
      ));
  gh.singleton<_i41.AuthMapsterRegistrar>(
      _i41.AuthMapsterRegistrar(gh<_i30.Mapster>())..register());
  gh.singleton<_i42.AuthMediatorRegistrar>(
      _i42.AuthMediatorRegistrar(gh<_i31.Mediator>())..register());
  gh.singleton<_i43.CreateLobbyCommandHandler>(_i43.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i32.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i32.LobbyPasswordHashRepository>(),
    hashService: gh<_i8.HashService>(),
  ));
  gh.singleton<_i44.JoinLobbyCommandHandler>(_i44.JoinLobbyCommandHandler(
    lobbyRepository: gh<_i32.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i32.LobbyPasswordHashRepository>(),
    hashService: gh<_i8.HashService>(),
  ));
  gh.factory<_i45.LobbyController>(() => _i45.LobbyController(
        mediator: gh<_i31.Mediator>(),
        mapster: gh<_i30.Mapster>(),
      ));
  gh.singleton<_i46.LobbyMapsterRegistrar>(
      _i46.LobbyMapsterRegistrar(gh<_i30.Mapster>())..register());
  gh.singleton<_i47.LobbyMediatorRegistrar>(
      _i47.LobbyMediatorRegistrar(gh<_i31.Mediator>())..register());
  gh.singleton<_i48.LogInQueryHandler>(_i48.LogInQueryHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    userRepository: gh<_i32.UserRepository>(),
    passwordHashRepository: gh<_i32.PasswordHashRepository>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i49.LogOutCommandHandler>(_i49.LogOutCommandHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i50.RegisterCommandHandler>(_i50.RegisterCommandHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    hashService: gh<_i51.HashService>(),
    userRepository: gh<_i32.UserRepository>(),
    passwordHashRepository: gh<_i32.PasswordHashRepository>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i52.EnvModule {}

class _$MapsterModule extends _i53.MapsterModule {}

class _$MediatorModule extends _i54.MediatorModule {}
