import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:loud_question_server/loud_question_server.dart';
import 'package:path/path.dart';

const _questionType = 'q';
const _answerType = 'a';
const _questionsKey = 'questions';
final _logger = Logger('Main');

void main() {
  _configLogger();

  // output file

  final outputFile = File(join(Directory.current.path, 'questions.json'));

  final content = outputFile.readAsStringSync();

  final jsonData = json.decode(content);

  if (jsonData is! Map) {
    throw Exception('File content is not a Map');
  }

  final questionList = jsonData[_questionsKey];

  if (questionList is! List) {
    throw Exception('Questions list is not a List');
  }

  final oldQuestions = <Question>[];
  for (final e in questionList) {
    oldQuestions.add(Question.fromJson(e));
  }

  _logger.info('Questions amount: ${oldQuestions.length}');

  // input file

  final inputFile = File(join(Directory.current.path, 'raw_questions.txt'));

  final inputData = inputFile.readAsStringSync().split('\n');

  final newQuestions = <Question>[];
  var type = _questionType;
  var question = '';
  var answer = '';
  for (var e in inputData) {
    e = e.replaceAll('\r', '');

    if (e.isEmpty) {
      if (type == _questionType) {
        type = _answerType;
      } else {
        type = _questionType;
      }
    } else {
      if (type == _questionType) {
        question = e;
      } else {
        answer = e;
      }

      if (question.isNotEmpty && answer.isNotEmpty) {
        late QuestionID id;
        do {
          id = QuestionID.generate();
        } while (oldQuestions.firstWhereOrNull((e) => e.id == id) != null ||
            newQuestions.firstWhereOrNull((e) => e.id == id) != null);

        newQuestions.add(
          Question(
            id: id,
            content: question,
            answer: answer,
            theme: '',
          ),
        );

        question = '';
        answer = '';
      }
    }
  }

  _logger.info('New questions amount: ${newQuestions.length}');

  final allQuestions = [...oldQuestions, ...newQuestions];

  final map = {_questionsKey: allQuestions};

  final encodedMap = json.encode(map);

  outputFile.writeAsStringSync(encodedMap);

  _logger
      .info('Questions amount: ${oldQuestions.length + newQuestions.length}');
}

void _configLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print(
      '[${record.time}] '
      '${record.level.name} | '
      '${record.loggerName}: '
      '${record.message}',
    );
  });
}
