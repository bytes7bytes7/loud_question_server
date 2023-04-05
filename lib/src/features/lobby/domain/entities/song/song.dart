import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/song_id/song_id.dart';

part 'song.freezed.dart';

part 'song.g.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required SongID id,
    required String title,
    required String encodedBytes,
  }) = _Song;

  factory Song.fromJson(JsonMap json) => _$SongFromJson(json);
}
