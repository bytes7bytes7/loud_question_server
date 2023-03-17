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
  router.add(
    'POST',
    r'/give_answer',
    service.giveAnswer,
  );
  router.add(
    'POST',
    r'/set_leader',
    service.setLeader,
  );
  return router;
}
