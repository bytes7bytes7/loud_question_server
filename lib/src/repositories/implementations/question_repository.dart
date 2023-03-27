import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../../utils/question_settings.dart';
import '../interfaces/question_repository.dart';

@Singleton(as: QuestionRepository)
class ProdQuestionRepository implements QuestionRepository {
  ProdQuestionRepository({
    required QuestionSettings questionSettings,
  }) : _questionSettings = questionSettings;

  final QuestionSettings _questionSettings;

  final _storage = <Question>[];
  final _rand = Random();

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final file = File(_questionSettings.path);
    final rawString = file.readAsStringSync();
    final jsonData = json.decode(rawString);
    final questions = (jsonData as Map)['questions'] as List;

    // ignore: unnecessary_lambdas
    _storage.addAll(questions.map((e) => Question.fromJson(e)));
  }

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
