import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyJointLobby extends DetailedException {
  const YouAlreadyJointLobby()
      : super.conflict(
          code: 'lobby.youAlreadyJoint',
          description: 'You have already joint this lobby.',
        );
}
