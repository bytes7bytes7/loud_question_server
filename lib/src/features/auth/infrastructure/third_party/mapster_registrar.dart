import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class AuthMapsterRegistrar {
  const AuthMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.two(RegisterRequestIPToRegisterCommandMapper.new))
      ..register(MapperMeta.two(LogInRequestIPToLogInQueryMapper.new))
      ..register(MapperMeta.one(AuthResultToAuthResponseMapper.new))
      ..register(MapperMeta.two(LogOutRequestStringToLogOutCommandMapper.new))
      ..register(MapperMeta.one(LogOutResultToLogOutResponse.new))
      ..register(
        MapperMeta.two(VerifyTokenRequestStringToVerifyTokenQueryMapper.new),
      )
      ..register(
        MapperMeta.one(VerifyTokenResultToVerifyTokenResponseMapper.new),
      )
      ..register(
        MapperMeta.two(RefreshTokenRequestIPToRefreshTokenCommandMapper.new),
      )
      ..register(
        MapperMeta.one(RefreshTokenResultToRefreshTokenResponseMapper.new),
      );
  }
}
