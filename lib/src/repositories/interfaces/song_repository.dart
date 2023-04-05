import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';

abstract class SongRepository {
  Future<void> init();

  Future<void> dispose();

  Future<SongID> getDefaultSongID();

  Future<Song?> getSongByID({required SongID id});

  Future<List<Song>> getUserSongs({required UserID userID});

  Future<Song> addSong({
    required UserID userID,
    required List<int> bytes,
    required String title,
  });
}
