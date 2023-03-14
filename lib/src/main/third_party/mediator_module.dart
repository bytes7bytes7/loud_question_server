import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

@module
abstract class MediatorModule {
  @singleton
  Mediator get mediator => Mediator();
}
