import '../../features/common/domain/domain.dart';
import '../../features/lobby/domain/domain.dart';

abstract class LobbyRepository {
  Future<Lobby> createLobby({
    required UserID creatorID,
  });

  Future<void> removeLobby({
    required UserID creatorID,
    required LobbyID id,
  });

  Future<Lobby> addGuest({
    required LobbyID lobbyID,
    required UserID guestID,
  });

  Future<Lobby> removeGuest({
    required LobbyID lobbyID,
    required UserID guestID,
  });
}
