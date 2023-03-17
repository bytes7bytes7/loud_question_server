// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$LobbyControllerRouter(LobbyController service) {
  final router = Router();
  router.add(
    'POST',
    r'/new',
    service.createLobby,
  );
  router.add(
    'POST',
    r'/<lobbyID>/join',
    service.joinLobby,
  );
  router.add(
    'GET',
    r'/all',
    service.getLobbies,
  );
  router.add(
    'POST',
    r'/set_leader',
    service.setLeader,
  );
  return router;
}
