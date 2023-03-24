import 'package:mapster/mapster.dart';

import '../../application/queries/get_song/get_song.dart';
import '../../presentation/contracts/contracts.dart';

class GetSongRequestToGetSongQueryMapper
    extends OneSourceMapper<GetSongRequest, GetSongQuery> {
  GetSongRequestToGetSongQueryMapper(super.input);

  @override
  GetSongQuery map() {
    return GetSongQuery();
  }
}
