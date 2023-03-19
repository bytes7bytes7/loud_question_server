import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/get_user_response/get_user_response.dart';

class GetUserResultToGetUserResponseMapper
    extends OneSourceMapper<GetUserResult, GetUserResponse> {
  GetUserResultToGetUserResponseMapper(super.input);

  @override
  GetUserResponse map() {
    return GetUserResponse(
      user: _result.user,
    );
  }

  GetUserResult get _result => source;
}
