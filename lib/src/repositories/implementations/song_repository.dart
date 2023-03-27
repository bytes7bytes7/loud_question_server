import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../env/env.dart';
import '../interfaces/song_repository.dart';

@Singleton(as: SongRepository)
class ProdSongRepository implements SongRepository {
  final _songPath = Env.songPath;

  @override
  Future<List<int>> getSongBytes() async {
    return File(_songPath).readAsBytesSync();
  }
}
