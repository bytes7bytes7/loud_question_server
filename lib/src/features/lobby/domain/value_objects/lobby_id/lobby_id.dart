import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'lobby_id.freezed.dart';

part 'lobby_id.g.dart';

@freezed
class LobbyID with _$LobbyID {
  const factory LobbyID(String value) = _LobbyID;

  factory LobbyID.generate() {
    final uuid = Uuid().v4();

    // Make id shorter.
    // Cut id on first `-` to get this:
    // `110ec58a`
    // instead of this:
    // '110ec58a-a0f2-4ac4-8393-c866d813b8d1'
    return _LobbyID(uuid.substring(uuid.indexOf('-')));
  }

  const LobbyID._();

  factory LobbyID.fromJson(JsonMap json) => _$LobbyIDFromJson(json);

  String get str => value;
}
