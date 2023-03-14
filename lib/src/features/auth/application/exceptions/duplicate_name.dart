import '../../../common/application/exceptions/detailed_exception.dart';

class DuplicateName extends DetailedException {
  const DuplicateName()
      : super.conflict(
          code: 'user.duplicateName',
          description: 'Name is already in use.',
        );
}
