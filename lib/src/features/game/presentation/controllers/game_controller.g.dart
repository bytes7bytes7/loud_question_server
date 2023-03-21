// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$GameControllerRouter(GameController service) {
  final router = Router();
  router.add(
    'GET',
    r'/<lobbyID>/state',
    service.getState,
  );
  router.add(
    'GET',
    r'/<lobbyID>/listen_state',
    service.listenState,
  );
  router.add(
    'POST',
    r'/<lobbyID>/ready',
    service.setReady,
  );
  router.add(
    'POST',
    r'/<lobbyID>/not_ready',
    service.setNotReady,
  );
  router.add(
    'POST',
    r'/<lobbyID>/start',
    service.start,
  );
  router.add(
    'POST',
    r'/<lobbyID>/start_answer',
    service.startAnswer,
  );
  router.add(
    'POST',
    r'/<lobbyID>/give_answer',
    service.giveAnswer,
  );
  router.add(
    'POST',
    r'/<lobbyID>/set_leader',
    service.setLeader,
  );
  router.add(
    'GET',
    r'/<lobbyID>/get_answer',
    service.getAnswer,
  );
  router.add(
    'POST',
    r'/<lobbyID>/restart',
    service.restart,
  );
  return router;
}
