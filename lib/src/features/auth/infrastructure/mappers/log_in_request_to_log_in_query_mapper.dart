import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class LogInRequestToLogInQueryMapper
    extends OneSourceMapper<LogInRequest, LogInQuery> {
  LogInRequestToLogInQueryMapper(super.input);

  @override
  LogInQuery map() {
    return LogInQuery(
      name: _request.name,
      password: _request.password,
    );
  }

  LogInRequest get _request => source;
}
