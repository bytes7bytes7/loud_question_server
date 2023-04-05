import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'upload_song_command.dart';

@singleton
class UploadSongCommandValidator
    extends BehaviorValidator<UploadSongCommand, LobbyResult> {}
