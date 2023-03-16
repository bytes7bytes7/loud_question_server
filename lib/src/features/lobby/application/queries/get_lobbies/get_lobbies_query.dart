import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetLobbiesQuery
    extends Request<Either<List<DetailedException>, GetLobbiesResult>> {
  GetLobbiesQuery({
    required this.userID,
  }) : super(GetLobbiesQuery);

  final UserID userID;
}
