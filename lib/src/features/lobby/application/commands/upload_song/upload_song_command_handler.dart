import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'upload_song_command.dart';

@singleton
class UploadSongCommandHandler extends RequestHandler<UploadSongCommand,
    Either<List<DetailedException>, LobbyResult>> {
  @override
  FutureOr<Either<List<DetailedException>, LobbyResult>> handle(
    UploadSongCommand request,
  ) {
    // TODO: implement handle
    throw UnimplementedError();
  }
}
