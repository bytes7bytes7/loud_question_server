import '../../features/common/domain/domain.dart';

abstract class QuestionRepository {
  Future<Question?> getByID({required QuestionID id});

  Future<Question> getRandom();

  Future<Question?> getThematic({required String theme});
}
