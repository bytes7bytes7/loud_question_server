import '../../features/game/domain/domain.dart';

abstract class QuestionRepository {
  Future<Question> getRandom();

  Future<Question?> getThematic({required String theme});
}
