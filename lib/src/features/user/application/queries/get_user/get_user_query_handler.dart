import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_user_query.dart';

@singleton
class GetUserQueryHandler extends RequestHandler<GetUserQuery,
    Either<List<DetailedException>, GetUserResult>> {
  const GetUserQueryHandler({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  final UserRepository _userRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetUserResult>> handle(
    GetUserQuery request,
  ) async {
    final user = await _userRepository.getByID(id: request.userID);

    if (user == null) {
      return left(
        [const UserDoesNotExist()],
      );
    }

    return right(
      GetUserResult(
        user: user,
      ),
    );
  }
}
