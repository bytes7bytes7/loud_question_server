// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i12;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i35;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i20;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i25;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i34;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i19;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i30;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i29;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i14;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i15;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i13;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i11;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i33;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i10;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i31;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i3;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i7;
import 'package:load_question_server/src/features/common/common.dart' as _i37;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i8;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i24;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i26;
import 'package:load_question_server/src/repositories/implementations/user_repository.dart'
    as _i27;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i5;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i23;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i16;
import 'package:mapster/mapster.dart' as _i21;
import 'package:mediator/mediator.dart' as _i22;

import '../../env/env_module.dart' as _i38;
import '../third_party/mapster_module.dart' as _i39;
import '../third_party/mediator_module.dart' as _i40;

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
  gh.singleton<_i3.DateTimeProvider>(_i4.ProdDateTimeProvider());
  gh.singleton<_i5.DateTimeRepository>(_i6.ProdDateTimeRepository());
  gh.singleton<_i7.HashService>(_i8.ProdHashService());
  gh.singleton<
          _i9.JsonConverter<_i10.VerifyTokenRequest, Map<String, Object?>>>(
      _i11.VerifyTokenRequestJsonConverter());
  gh.singleton<_i12.JsonConverter<_i10.RegisterRequest, Map<String, Object?>>>(
      _i13.RegisterRequestJsonConverter());
  gh.singleton<_i9.JsonConverter<_i10.LogInRequest, Map<String, Object?>>>(
      _i14.LogInRequestJsonConverter());
  gh.singleton<_i9.JsonConverter<_i10.LogOutRequest, Map<String, Object?>>>(
      _i15.LogOutRequestJsonConverter());
  gh.singleton<_i16.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i17.JwtTokenService>(
      _i18.ProdJwtTokenService(gh<_i16.JwtSettings>()));
  gh.singleton<_i19.LogInQueryValidator>(_i19.LogInQueryValidator());
  gh.singleton<_i20.LogOutCommandValidator>(_i20.LogOutCommandValidator());
  gh.singleton<_i21.Mapster>(mapsterModule.mapster);
  gh.singleton<_i22.Mediator>(mediatorModule.mediator);
  gh.singleton<_i23.PasswordHashRepository>(
    _i24.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i25.RegisterCommandValidator>(_i25.RegisterCommandValidator());
  gh.singleton<_i23.TokenRepository>(
    _i26.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i23.UserRepository>(
    _i27.TestUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i28.VerifyTokenQueryHandler>(_i28.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i30.VerifyTokenQueryValidator>(
      _i30.VerifyTokenQueryValidator());
  gh.factory<_i31.AuthController>(() => _i31.AuthController(
        mediator: gh<_i22.Mediator>(),
        mapster: gh<_i21.Mapster>(),
      ));
  gh.singleton<_i32.AuthMapsterRegistrar>(
      _i32.AuthMapsterRegistrar(gh<_i21.Mapster>())..register());
  gh.singleton<_i33.AuthMediatorRegistrar>(
      _i33.AuthMediatorRegistrar(gh<_i22.Mediator>())..register());
  gh.singleton<_i34.LogInQueryHandler>(_i34.LogInQueryHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    hashService: gh<_i7.HashService>(),
    userRepository: gh<_i23.UserRepository>(),
    passwordHashRepository: gh<_i23.PasswordHashRepository>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i35.LogOutCommandHandler>(_i35.LogOutCommandHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i36.RegisterCommandHandler>(_i36.RegisterCommandHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    hashService: gh<_i37.HashService>(),
    userRepository: gh<_i23.UserRepository>(),
    passwordHashRepository: gh<_i23.PasswordHashRepository>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i38.EnvModule {}

class _$MapsterModule extends _i39.MapsterModule {}

class _$MediatorModule extends _i40.MediatorModule {}
