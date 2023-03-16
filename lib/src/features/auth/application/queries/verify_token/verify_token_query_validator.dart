import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'verify_token_query.dart';

@singleton
class VerifyTokenQueryValidator
    extends BehaviorValidator<VerifyTokenQuery, VerifyTokenResult> {}
