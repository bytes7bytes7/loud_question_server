import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/game_repository.dart';

@Singleton(as: GameRepository)
class ProdGameRepository implements GameRepository {
  final _jsonEncoder = JsonEncoder();
  final _jsonDecoder = JsonDecoder();

  late Box<String> _box;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _box = await Hive.openBox('game_state');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    return _box.close();
  }

  @override
  Future<GameState?> get({
    required LobbyID lobbyID,
  }) async {
    final string = _box.get(lobbyID.str);

    if (string == null) {
      return null;
    }

    final map = _jsonDecoder.convert(string);

    return GameState.fromJson(map);
  }

  @override
  Future<GameState> updateOrAdd({
    required GameState gameState,
  }) async {
    final string = _jsonEncoder.convert(gameState.toJson());

    await _box.put(gameState.lobbyID.str, string);

    return gameState;
  }
}
