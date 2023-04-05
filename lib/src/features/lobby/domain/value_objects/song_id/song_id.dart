import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'song_id.freezed.dart';

part 'song_id.g.dart';

@freezed
class SongID with _$SongID {
  const factory SongID(String value) = _SongID;

  factory SongID.generate() {
    return SongID(Uuid().v4());
  }

  const SongID._();

  factory SongID.fromJson(JsonMap json) => _$SongIDFromJson(json);

  factory SongID.fromString(String string) => SongID(string);

  String get str => value;
}
