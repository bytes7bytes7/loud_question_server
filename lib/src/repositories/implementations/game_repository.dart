import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../../utils/utils.dart';
import '../interfaces/game_repository.dart';

@Singleton(as: GameRepository)
class ProdGameRepository implements GameRepository {
  late Box<JsonMap> _box;

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
    final map = _box.get(lobbyID.str);

    if (map == null) {
      return null;
    }

    return GameState.fromJson(map);
  }

  @override
  Future<GameState> updateOrAdd({
    required GameState gameState,
  }) async {
    await _box.put(gameState.lobbyID.str, gameState.toJson());

    return gameState;
  }
}
