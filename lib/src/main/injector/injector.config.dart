// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i16;
import 'package:load_question_server/src/features/auth/application/application.dart'
    as _i20;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i38;
import 'package:load_question_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i23;
import 'package:load_question_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i39;
import 'package:load_question_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i27;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i40;
import 'package:load_question_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i28;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i37;
import 'package:load_question_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i22;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i31;
import 'package:load_question_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i33;
import 'package:load_question_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i32;
import 'package:load_question_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i21;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i13;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i14;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i15;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i17;
import 'package:load_question_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i18;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i35;
import 'package:load_question_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i36;
import 'package:load_question_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i12;
import 'package:load_question_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i34;
import 'package:load_question_server/src/features/common/application/application.dart'
    as _i3;
import 'package:load_question_server/src/features/common/application/services/hash_service.dart'
    as _i9;
import 'package:load_question_server/src/features/common/common.dart' as _i41;
import 'package:load_question_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i10;
import 'package:load_question_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:load_question_server/src/repositories/implementations/date_time_repository.dart'
    as _i6;
import 'package:load_question_server/src/repositories/implementations/end_user_repository.dart'
    as _i8;
import 'package:load_question_server/src/repositories/implementations/password_hash_repository.dart'
    as _i26;
import 'package:load_question_server/src/repositories/implementations/staff_user_repository.dart'
    as _i29;
import 'package:load_question_server/src/repositories/implementations/token_repository.dart'
    as _i30;
import 'package:load_question_server/src/repositories/interfaces/date_time_repository.dart'
    as _i5;
import 'package:load_question_server/src/repositories/interfaces/interfaces.dart'
    as _i7;
import 'package:load_question_server/src/utils/jwt_settings.dart' as _i19;
import 'package:mapster/mapster.dart' as _i24;
import 'package:mediator/mediator.dart' as _i25;

import '../../env/env_module.dart' as _i42;
import '../third_party/mapster_module.dart' as _i43;
import '../third_party/mediator_module.dart' as _i44;

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
  gh.singleton<_i7.EndUserRepository>(
    _i8.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.HashService>(_i10.ProdHashService());
  gh.singleton<_i11.JsonConverter<_i12.LogInRequest, Map<String, Object?>>>(
      _i13.LogInRequestJsonConverter());
  gh.singleton<_i11.JsonConverter<_i12.LogOutRequest, Map<String, Object?>>>(
      _i14.LogOutRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i12.RefreshTokenRequest, Map<String, Object?>>>(
      _i15.RefreshTokenRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i12.RegisterRequest, Map<String, Object?>>>(
      _i17.RegisterRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i12.VerifyTokenRequest, Map<String, Object?>>>(
      _i18.VerifyTokenRequestJsonConverter());
  gh.singleton<_i19.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i20.JwtTokenService>(
      _i21.ProdJwtTokenService(gh<_i19.JwtSettings>()));
  gh.singleton<_i22.LogInQueryValidator>(_i22.LogInQueryValidator());
  gh.singleton<_i23.LogOutCommandValidator>(_i23.LogOutCommandValidator());
  gh.singleton<_i24.Mapster>(mapsterModule.mapster);
  gh.singleton<_i25.Mediator>(mediatorModule.mediator);
  gh.singleton<_i7.PasswordHashRepository>(
    _i26.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i27.RefreshTokenCommandValidator>(
      _i27.RefreshTokenCommandValidator());
  gh.singleton<_i28.RegisterCommandValidator>(_i28.RegisterCommandValidator());
  gh.singleton<_i7.StaffUserRepository>(
    _i29.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i7.TokenRepository>(
    _i30.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i31.VerifyTokenQueryHandler>(_i31.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i32.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i33.VerifyTokenQueryValidator>(
      _i33.VerifyTokenQueryValidator());
  gh.factory<_i34.AuthController>(() => _i34.AuthController(
        mediator: gh<_i25.Mediator>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.singleton<_i35.AuthMapsterRegistrar>(
      _i35.AuthMapsterRegistrar(gh<_i24.Mapster>())..register());
  gh.singleton<_i36.AuthMediatorRegistrar>(
      _i36.AuthMediatorRegistrar(gh<_i25.Mediator>())..register());
  gh.singleton<_i37.LogInQueryHandler>(_i37.LogInQueryHandler(
    jwtTokenService: gh<_i32.JwtTokenService>(),
    hashService: gh<_i9.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeRepository: gh<_i7.DateTimeRepository>(),
  ));
  gh.singleton<_i38.LogOutCommandHandler>(_i38.LogOutCommandHandler(
    jwtTokenService: gh<_i32.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i39.RefreshTokenCommandHandler>(_i39.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i32.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    dateTimeRepository: gh<_i7.DateTimeRepository>(),
  ));
  gh.singleton<_i40.RegisterCommandHandler>(_i40.RegisterCommandHandler(
    jwtTokenService: gh<_i32.JwtTokenService>(),
    hashService: gh<_i41.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeRepository: gh<_i7.DateTimeRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i42.EnvModule {}

class _$MapsterModule extends _i43.MapsterModule {}

class _$MediatorModule extends _i44.MediatorModule {}
