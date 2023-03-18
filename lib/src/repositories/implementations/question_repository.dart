import 'dart:math';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/game/domain/entities/question/question.dart';
import '../../features/game/domain/value_objects/question_id/question_id.dart';
import '../interfaces/question_repository.dart';

@test
@Singleton(as: QuestionRepository)
class TestQuestionRepository implements QuestionRepository {
  final _storage = List<Question>.generate(
    100,
    (index) => Question(
      id: QuestionID('$index'),
      content: '$index + 1 = ?',
      answer: '${index + 1}',
      theme: '${index % 2}',
    ),
  );
  final _rand = Random();

  @override
  Future<Question?> getByID({required QuestionID id}) async {
    return _storage.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Future<Question> getRandom() async {
    return _storage[_rand.nextInt(_storage.length)];
  }

  @override
  Future<Question?> getThematic({required String theme}) async {
    _storage.shuffle(_rand);

    for (final q in _storage) {
      if (q.theme == theme) {
        return q;
      }
    }

    return null;
  }
}
