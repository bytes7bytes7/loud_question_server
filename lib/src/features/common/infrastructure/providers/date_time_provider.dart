import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@Singleton(as: DateTimeProvider)
class ProdDateTimeProvider implements DateTimeProvider {
  @override
  DateTime nowUtc() => DateTime.now().toUtc();
}
