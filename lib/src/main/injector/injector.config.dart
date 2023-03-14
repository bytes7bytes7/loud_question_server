// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i16;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i20;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i46;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i27;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i47;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i45;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i26;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i35;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i21;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i14;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i15;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i39;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i40;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i13;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i38;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i4;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i8;
import 'package:load_question_server/src/features/common/common.dart' as _i48;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i9;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_handler.dart'
    as _i41;
import 'package:load_question_server/src/features/lobby/application/commands/create_lobby/create_lobby_command_validator.dart'
    as _i3;
import 'package:load_question_server/src/features/lobby/infrastructure/json_converters/create_lobby_request_json_converter.dart'
    as _i12;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mapster_registrar.dart'
    as _i43;
import 'package:load_question_server/src/features/lobby/infrastructure/third_party/mediator_registrar.dart'
    as _i44;
import 'package:load_question_server/src/features/lobby/presentation/contracts/contracts.dart'
    as _i11;
import 'package:load_question_server/src/features/lobby/presentation/controllers/lobby_controller.dart'
    as _i42;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:load_question_server/src/repositories/implementations/lobby_password_hash_repository.dart'
    as _i23;
import 'package:load_question_server/src/repositories/implementations/lobby_repository.dart'
    as _i25;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i31;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i33;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i34;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i30;
import 'package:load_question_server/src/repositories/interfaces/lobby_password_hash_repository.dart'
    as _i22;
import 'package:load_question_server/src/repositories/interfaces/lobby_repository.dart'
    as _i24;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i19;
import 'package:mapster/mapster.dart' as _i28;
import 'package:mediator/mediator.dart' as _i29;

import '../../env/env_module.dart' as _i49;
import '../third_party/mapster_module.dart' as _i50;
import '../third_party/mediator_module.dart' as _i51;

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
  gh.singleton<
          _i10.JsonConverter<_i11.CreateLobbyRequest, Map<String, Object?>>>(
      _i12.CreateLobbyRequestJsonConverter());
  gh.singleton<_i10.JsonConverter<_i13.LogInRequest, Map<String, Object?>>>(
      _i14.LogInRequestJsonConverter());
  gh.singleton<_i10.JsonConverter<_i13.LogOutRequest, Map<String, Object?>>>(
      _i15.LogOutRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i13.RegisterRequest, Map<String, Object?>>>(
      _i17.RegisterRequestJsonConverter());
  gh.singleton<
          _i10.JsonConverter<_i13.VerifyTokenRequest, Map<String, Object?>>>(
      _i18.VerifyTokenRequestJsonConverter());
  gh.singleton<_i19.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i20.JwtTokenService>(
      _i21.ProdJwtTokenService(gh<_i19.JwtSettings>()));
  gh.singleton<_i22.LobbyPasswordHashRepository>(
    _i23.TestLobbyPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i24.LobbyRepository>(
    _i25.TestLobbyRepository(dateTimeRepository: gh<_i6.DateTimeRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i26.LogInQueryValidator>(_i26.LogInQueryValidator());
  gh.singleton<_i27.LogOutCommandValidator>(_i27.LogOutCommandValidator());
  gh.singleton<_i28.Mapster>(mapsterModule.mapster);
  gh.singleton<_i29.Mediator>(mediatorModule.mediator);
  gh.singleton<_i30.PasswordHashRepository>(
    _i31.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i32.RegisterCommandValidator>(_i32.RegisterCommandValidator());
  gh.singleton<_i30.TokenRepository>(
    _i33.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i30.UserRepository>(
    _i34.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i35.VerifyTokenQueryHandler>(_i35.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i37.VerifyTokenQueryValidator>(
      _i37.VerifyTokenQueryValidator());
  gh.factory<_i38.AuthController>(() => _i38.AuthController(
        mediator: gh<_i29.Mediator>(),
        mapster: gh<_i28.Mapster>(),
      ));
  gh.singleton<_i39.AuthMapsterRegistrar>(
      _i39.AuthMapsterRegistrar(gh<_i28.Mapster>())..register());
  gh.singleton<_i40.AuthMediatorRegistrar>(
      _i40.AuthMediatorRegistrar(gh<_i29.Mediator>())..register());
  gh.singleton<_i41.CreateLobbyCommandHandler>(_i41.CreateLobbyCommandHandler(
    lobbyRepository: gh<_i30.LobbyRepository>(),
    lobbyPasswordHashRepository: gh<_i30.LobbyPasswordHashRepository>(),
    hashService: gh<_i8.HashService>(),
  ));
  gh.factory<_i42.LobbyController>(() => _i42.LobbyController(
        mediator: gh<_i29.Mediator>(),
        mapster: gh<_i28.Mapster>(),
      ));
  gh.singleton<_i43.LobbyMapsterRegistrar>(
      _i43.LobbyMapsterRegistrar(gh<_i28.Mapster>())..register());
  gh.singleton<_i44.LobbyMediatorRegistrar>(
      _i44.LobbyMediatorRegistrar(gh<_i29.Mediator>())..register());
  gh.singleton<_i45.LogInQueryHandler>(_i45.LogInQueryHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    userRepository: gh<_i30.UserRepository>(),
    passwordHashRepository: gh<_i30.PasswordHashRepository>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i46.LogOutCommandHandler>(_i46.LogOutCommandHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i47.RegisterCommandHandler>(_i47.RegisterCommandHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    hashService: gh<_i48.HashService>(),
    userRepository: gh<_i30.UserRepository>(),
    passwordHashRepository: gh<_i30.PasswordHashRepository>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i49.EnvModule {}

class _$MapsterModule extends _i50.MapsterModule {}

class _$MediatorModule extends _i51.MediatorModule {}
