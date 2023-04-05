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
    'GET',
    r'/all',
    service.getLobbies,
  );
  router.add(
    'GET',
    r'/song',
    service.getSong,
  );
  router.add(
    'POST',
    r'/song',
    service.uploadSong,
  );
  router.add(
    'GET',
    r'/<lobbyID>',
    service.getLobby,
  );
  router.add(
    'GET',
    r'/<lobbyID>/listen',
    service.listenLobby,
  );
  router.add(
    'POST',
    r'/<lobbyID>/join',
    service.joinLobby,
  );
  return router;
}
