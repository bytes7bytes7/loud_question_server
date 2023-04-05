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
        MapperMeta.one(LobbyResultToLobbyResponseMapper.new),
      )
      ..register(
        MapperMeta.two(JoinLobbyRequestIDToJoinLobbyCommandMapper.new),
      )
      ..register(
        MapperMeta.two(GetLobbiesRequestIDToGetLobbiesQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetLobbiesResultToGetLobbiesResponseMapper.new),
      )
      ..register(
        MapperMeta.two(GetLobbyRequestIDToGetLobbyQueryMapper.new),
      )
      ..register(
        MapperMeta.two(ListenLobbyRequestIDToListenLobbyQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetSongRequestToGetSongQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetSongResultToGetSongResponse.new),
      )
      ..register(
        MapperMeta.two(UploadSongRequestIDToUploadSongCommandMapper.new),
      );
  }
}
