import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_song_query.dart';

@singleton
class GetSongQueryHandler extends RequestHandler<GetSongQuery,
    Either<List<DetailedException>, GetSongResult>> {
  const GetSongQueryHandler({
    required SongRepository songRepository,
  }) : _songRepository = songRepository;

  final SongRepository _songRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetSongResult>> handle(
    GetSongQuery request,
  ) async {
    final bytes = await _songRepository.getSongBytes();

    return right(
      GetSongResult(
        bytes: bytes,
      ),
    );
  }
}
