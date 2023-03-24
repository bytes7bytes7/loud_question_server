import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class GetSongQuery
    extends Request<Either<List<DetailedException>, GetSongResult>> {
  GetSongQuery() : super(GetSongQuery);
}
