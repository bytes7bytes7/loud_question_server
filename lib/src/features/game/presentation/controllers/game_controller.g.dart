// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$GameControllerRouter(GameController service) {
  final router = Router();
  router.add(
    'POST',
    r'/ready',
    service.setReady,
  );
  router.add(
    'POST',
    r'/not_ready',
    service.setNotReady,
  );
  router.add(
    'POST',
    r'/start',
    service.start,
  );
  return router;
}