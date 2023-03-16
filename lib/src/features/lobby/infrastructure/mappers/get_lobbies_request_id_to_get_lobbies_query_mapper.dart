import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetLobbiesRequestIDToGetLobbiesQueryMapper
    extends TwoSourcesMapper<GetLobbiesRequest, UserID, GetLobbiesQuery> {
  GetLobbiesRequestIDToGetLobbiesQueryMapper(super.input);

  @override
  GetLobbiesQuery map() {
    return GetLobbiesQuery(
      userID: _userID,
    );
  }

  UserID get _userID => source2;
}
