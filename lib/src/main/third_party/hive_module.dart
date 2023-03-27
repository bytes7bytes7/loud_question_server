import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../env/env.dart';

@singleton
@Order(-1)
class HiveModule {
  @PostConstruct()
  void init() {
    Hive.init(Env.dbPath);
  }
}
