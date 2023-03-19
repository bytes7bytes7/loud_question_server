import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_user/get_user.dart';
import '../../presentation/contracts/get_user_request/get_user_request.dart';

class GetUserRequestToGetUserQueryMapper
    extends OneSourceMapper<GetUserRequest, GetUserQuery> {
  GetUserRequestToGetUserQueryMapper(super.input);

  @override
  GetUserQuery map() {
    return GetUserQuery(
      userID: UserID.fromString(_request.userID),
    );
  }

  GetUserRequest get _request => source;
}
