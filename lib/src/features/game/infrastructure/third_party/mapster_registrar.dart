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
        MapperMeta.two(GameStateToGameStateVMMapper.new),
      )
      ..register(
        MapperMeta.two(SetReadyRequestIDToSetReadyCommandMapper.new),
      )
      ..register(
        MapperMeta.two(SetNotReadyRequestIDToSetNotReadyCommandMapper.new),
      )
      ..register(
        MapperMeta.one(GameStateResultToGameStateResponse.new),
      )
      ..register(
        MapperMeta.two(StartRoundRequestIDToStartRoundCommandMapper.new),
      )
      ..register(
        MapperMeta.two(GiveAnswerRequestIDToGiveAnswerCommandMapper.new),
      )
      ..register(
        MapperMeta.two(SetLeaderRequestIDToSetLeaderCommandMapper.new),
      )
      ..register(
        MapperMeta.two(GetAnswerRequestIDToGetAnswerCommandMapper.new),
      )
      ..register(
        MapperMeta.two(RestartRequestIDToRestartCommandMapper.new),
      )
      ..register(
        MapperMeta.two(GetStateRequestIDToGetStateQueryMapper.new),
      )
      ..register(
        MapperMeta.two(ListenStateRequestIDToListenStateQueryMapper.new),
      )
      ..register(
        MapperMeta.two(StartAnswerRequestIDToStartAnswerCommandMapper.new),
      )
      ..register(
        MapperMeta.two(
          ChangeQuestionRequestIDToChangeQuestionCommandMapper.new,
        ),
      );
  }
}
