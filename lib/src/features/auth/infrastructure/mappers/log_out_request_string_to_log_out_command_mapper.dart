import 'package:mapster/mapster.dart';

import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class LogOutRequestStringToLogOutCommandMapper
    extends TwoSourcesMapper<LogOutRequest, String, LogOutCommand> {
  LogOutRequestStringToLogOutCommandMapper(super.input);

  @override
  LogOutCommand map() {
    return LogOutCommand(
      accessToken: _accessToken,
    );
  }

  String get _accessToken => source2;
}
