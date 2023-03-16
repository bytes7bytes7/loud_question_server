import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class GameMapsterRegistrar {
  const GameMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(SetReadyRequestIDToSetReadyCommandMapper.new),
      )
      ..register(
        MapperMeta.one(SetReadyResultToSetReadyResponseMapper.new),
      );
  }
}
