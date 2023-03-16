import 'detailed_exception.dart';

class NoPermission extends DetailedException {
  const NoPermission()
      : super.failure(
          code: 'common.noPermission',
          description: 'You have no permission for this operation.',
        );
}
