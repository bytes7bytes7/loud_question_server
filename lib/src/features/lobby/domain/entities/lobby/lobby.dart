import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../../value_objects/song_id/song_id.dart';

part 'lobby.freezed.dart';

part 'lobby.g.dart';

@freezed
class Lobby with _$Lobby {
  const factory Lobby({
    required LobbyID id,
    required UserID creatorID,
    required int createdAtInMSSinceEpoch,
    required List<UserID> guestIDs,
    required SongID songID,
  }) = _Lobby;

  factory Lobby.fromJson(JsonMap json) => _$LobbyFromJson(json);
}
