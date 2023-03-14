// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AuthControllerRouter(AuthController service) {
  final router = Router();
  router.add(
    'POST',
    r'/register',
    service.register,
  );
  router.add(
    'POST',
    r'/log_in',
    service.logIn,
  );
  router.add(
    'POST',
    r'/log_out',
    service.logOut,
  );
  router.add(
    'POST',
    r'/verify_token',
    service.verifyToken,
  );
  router.add(
    'POST',
    r'/refresh_token',
    service.refreshToken,
  );
  return router;
}
