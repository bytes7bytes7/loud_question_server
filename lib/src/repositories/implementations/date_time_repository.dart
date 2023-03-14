import 'package:injectable/injectable.dart';

import '../interfaces/date_time_repository.dart';

@Singleton(as: DateTimeRepository)
class ProdDateTimeRepository implements DateTimeRepository {
  @override
  DateTime now() {
    return DateTime.now();
  }
}
