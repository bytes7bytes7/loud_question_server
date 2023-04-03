import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class ChangeQuestionCommand
    extends Request<Either<List<DetailedException>, GameStateResult>> {
  ChangeQuestionCommand() : super(ChangeQuestionCommand);
}
