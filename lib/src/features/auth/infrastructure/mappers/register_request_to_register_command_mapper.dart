import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RegisterRequestToRegisterCommandMapper
    extends OneSourceMapper<RegisterRequest, RegisterCommand> {
  RegisterRequestToRegisterCommandMapper(super.input);

  @override
  RegisterCommand map() {
    return RegisterCommand(
      name: _request.name,
      password: _request.password,
    );
  }

  RegisterRequest get _request => source;
}
