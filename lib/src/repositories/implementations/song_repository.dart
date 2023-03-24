import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../utils/song_settings.dart';
import '../interfaces/song_repository.dart';

@Singleton(as: SongRepository)
class ProdSongRepository implements SongRepository {
  const ProdSongRepository({
    required SongSettings songSettings,
  }) : _songSettings = songSettings;

  final SongSettings _songSettings;

  @override
  Future<List<int>> getSongBytes() async {
    return File(_songSettings.path).readAsBytesSync();
  }
}
