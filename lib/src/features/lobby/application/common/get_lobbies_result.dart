import '../../domain/domain.dart';

class GetLobbiesResult {
  const GetLobbiesResult({
    required this.lobbies,
  });

  final List<Lobby> lobbies;
}
