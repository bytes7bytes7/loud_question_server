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
  return router;
}
