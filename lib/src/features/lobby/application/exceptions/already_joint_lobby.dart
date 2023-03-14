import '../../../common/application/exceptions/detailed_exception.dart';

class AlreadyJointLobby extends DetailedException {
  const AlreadyJointLobby()
      : super.conflict(
          code: 'lobby.alreadyJoint',
          description: 'You have already joint this lobby.',
        );
}
