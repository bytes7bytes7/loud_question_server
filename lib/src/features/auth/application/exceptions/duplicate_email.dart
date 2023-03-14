import '../../../common/application/exceptions/detailed_exception.dart';

class DuplicateEmail extends DetailedException {
  const DuplicateEmail()
      : super.conflict(
          code: 'user.duplicateEmail',
          description: 'Email is already in use.',
        );
}
