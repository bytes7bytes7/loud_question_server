import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class LogOutResultToLogOutResponse
    extends OneSourceMapper<LogOutResult, LogOutResponse> {
  LogOutResultToLogOutResponse(super.input);

  @override
  LogOutResponse map() {
    return LogOutResponse(
      info: _result.info,
    );
  }

  LogOutResult get _result => source;
}
