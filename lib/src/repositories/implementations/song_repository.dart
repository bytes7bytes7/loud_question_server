import 'dart:convert';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../env/env.dart';
import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';
import '../interfaces/song_repository.dart';

@Singleton(as: SongRepository)
class ProdSongRepository implements SongRepository {
  late Box<String> _songBox;
  late Box<List<String>> _userToSongsBox;

  final _defaultSongPath = '${Env.songDir}${Env.defaultSongName}';
  final _defaultSongID = SongID.fromString('default');
  final _jsonCodec = JsonCodec();
  final _base64Codec = Base64Codec();

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _songBox = await Hive.openBox('songs');
    _userToSongsBox = await Hive.openBox('user_to_songs');

    if (_songBox.keys.isEmpty) {
      final bytes = File(_defaultSongPath).readAsBytesSync();

      final defaultSong = Song(
        id: _defaultSongID,
        title: _removeExtension(Env.defaultSongName),
        encodedBytes: _base64Codec.encode(bytes),
      );

      await _songBox.put(
        _defaultSongID.str,
        _jsonCodec.encode(defaultSong.toJson()),
      );
    }
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _songBox.close();
    await _userToSongsBox.close();
  }

  @override
  Future<SongID> getDefaultSongID() async {
    return _defaultSongID;
  }

  @override
  Future<Song?> getSongByID({required SongID id}) async {
    final song = _songBox.get(id.str);

    if (song == null) {
      return null;
    }

    return Song.fromJson(_jsonCodec.decode(song));
  }

  @override
  Future<List<Song>> getUserSongs({required UserID userID}) async {
    final songs = <Song>[];

    final rawJson = _songBox.get(_defaultSongID);
    if (rawJson != null) {
      songs.add(Song.fromJson(_jsonCodec.decode(rawJson)));
    }

    final songIDs = _userToSongsBox.get(userID.str) ?? [];

    for (final id in songIDs) {
      final rawJson = _songBox.get(id);

      if (rawJson != null) {
        songs.add(Song.fromJson(_jsonCodec.decode(rawJson)));
      }
    }

    return songs;
  }

  @override
  Future<Song> addSong({
    required UserID userID,
    required List<int> bytes,
    required String title,
  }) async {
    late SongID id;
    do {
      id = SongID.generate();
    } while (_songBox.containsKey(id.str));

    final song = Song(
      id: id,
      title: title,
      encodedBytes: _base64Codec.encode(bytes),
    );

    await _songBox.put(id.str, _jsonCodec.encode(song.toJson()));
    final songIDs = List.of(_userToSongsBox.get(userID.str) ?? <String>[])
      ..add(id.str);

    await _userToSongsBox.put(userID.str, songIDs);

    return song;
  }

  String _removeExtension(String songName) {
    final ext = '.mp3';

    if (songName.endsWith(ext)) {
      return songName.substring(0, songName.length - ext.length);
    }

    return songName;
  }
}
