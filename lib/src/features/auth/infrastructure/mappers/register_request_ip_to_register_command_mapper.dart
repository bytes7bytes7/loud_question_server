import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RegisterRequestIPToRegisterCommandMapper
    extends TwoSourcesMapper<RegisterRequest, String, RegisterCommand> {
  RegisterRequestIPToRegisterCommandMapper(super.input);

  @override
  RegisterCommand map() {
    return RegisterCommand(
      firstName: _request.firstName,
      lastName: _request.lastName,
      email: _request.email,
      password: _request.password,
      deviceInfo: _request.deviceInfo,
      ip: _ip,
    );
  }

  RegisterRequest get _request => source1;

  String get _ip => source2;
}
