import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';
import '../interfaces/lobby_repository.dart';
import '../interfaces/song_repository.dart';

@Singleton(as: LobbyRepository)
class ProdLobbyRepository implements LobbyRepository {
  ProdLobbyRepository({
    required DateTimeProvider dateTimeProvider,
    required SongRepository songRepository,
  })  : _dateTimeProvider = dateTimeProvider,
        _songRepository = songRepository;

  final DateTimeProvider _dateTimeProvider;
  final SongRepository _songRepository;
  final _jsonEncoder = JsonEncoder();
  final _jsonDecoder = JsonDecoder();

  late Box<List<String>> _userIDToLobbyIDs;
  late Box<List<String>> _lobbyIDToUserIDs;
  late Box<String> _lobbyIDToLobby;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _userIDToLobbyIDs = await Hive.openBox('user_id_to_lobby_ids');
    _lobbyIDToUserIDs = await Hive.openBox('lobby_id_to_user_ids');
    _lobbyIDToLobby = await Hive.openBox('lobby_id_to_lobby');
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _userIDToLobbyIDs.close();
    await _lobbyIDToUserIDs.close();
    await _lobbyIDToLobby.close();
  }

  @override
  Future<List<Lobby>> getAllByUserID({
    required UserID userID,
  }) async {
    final lobbyIDs = _userIDToLobbyIDs.get(userID.str) ?? [];

    final lobbies = <Lobby>[];
    for (final id in lobbyIDs) {
      final lobby = _lobbyIDToLobby.get(id);

      if (lobby != null) {
        final string = _jsonDecoder.convert(lobby);
        lobbies.add(Lobby.fromJson(string));
      }
    }

    return lobbies;
  }

  @override
  Future<Lobby> create({
    required UserID creatorID,
  }) async {
    late LobbyID lobbyID;
    do {
      lobbyID = LobbyID.generate();
    } while (_lobbyIDToUserIDs.containsKey(lobbyID.str));

    final lobby = Lobby(
      id: lobbyID,
      creatorID: creatorID,
      createdAtInMSSinceEpoch: _dateTimeProvider.now().millisecondsSinceEpoch,
      guestIDs: [],
      songID: await _songRepository.getDefaultSongID(),
    );

    final lobbyIDs = (_userIDToLobbyIDs.get(creatorID.str) ?? [])
      ..add(lobby.id.str);
    await _userIDToLobbyIDs.put(creatorID.str, lobbyIDs);

    await _lobbyIDToUserIDs.put(lobbyID.str, [creatorID.str]);
    await _lobbyIDToLobby.put(
      lobby.id.str,
      _jsonEncoder.convert(lobby.toJson()),
    );

    return lobby;
  }

  @override
  Future<Lobby?> get({
    required LobbyID id,
  }) async {
    final string = _lobbyIDToLobby.get(id.str);

    if (string == null) {
      return null;
    }

    final map = _jsonDecoder.convert(string);

    return Lobby.fromJson(map);
  }

  @override
  Future<void> remove({
    required LobbyID id,
  }) async {
    final userIDs = _lobbyIDToUserIDs.get(id.str) ?? [];
    await _lobbyIDToUserIDs.delete(id.str);

    for (final id in userIDs) {
      await _userIDToLobbyIDs.delete(id);
    }

    await _lobbyIDToLobby.delete(id.str);
  }

  @override
  Future<Lobby> updateOrAdd({
    required Lobby lobby,
  }) async {
    await _lobbyIDToLobby.put(
      lobby.id.str,
      _jsonEncoder.convert(lobby.toJson()),
    );

    final lobbyIDs = _userIDToLobbyIDs.get(lobby.creatorID.str) ?? [];
    if (!lobbyIDs.contains(lobby.id.str)) {
      lobbyIDs.add(lobby.id.str);
    }

    await _userIDToLobbyIDs.put(lobby.creatorID.str, lobbyIDs);

    final guestIDs = <String>[];
    for (final id in lobby.guestIDs) {
      guestIDs.add(id.str);

      final lobbyIDs = _userIDToLobbyIDs.get(id.str) ?? [];
      if (!lobbyIDs.contains(lobby.id.str)) {
        lobbyIDs.add(lobby.id.str);
      }

      await _userIDToLobbyIDs.put(id.str, lobbyIDs);
    }

    final userIDs = [lobby.creatorID.str, ...guestIDs];
    await _lobbyIDToUserIDs.put(lobby.id.str, userIDs);

    return lobby;
  }
}
