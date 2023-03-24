import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_song_query.dart';

@singleton
class GetSongQueryValidator
    extends BehaviorValidator<GetSongQuery, GetSongResult> {}
