import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class LobbyMapsterRegistrar {
  const LobbyMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(CreateLobbyRequestIDToCreateLobbyCommandMapper.new),
      )
      ..register(
        MapperMeta.one(CreateLobbyResultToCreateLobbyResponseMapper.new),
      );
  }
}
