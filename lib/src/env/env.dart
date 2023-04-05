// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.dev', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'JWT_SECRET')
  static final jwtSecret = _Env.jwtSecret;

  @EnviedField(varName: 'JWT_ISSUER')
  static final jwtIssuer = _Env.jwtIssuer;

  @EnviedField(varName: 'JWT_TOKEN_EXPIRES_IN_MINS')
  static final jwtTokenExpiresInMins = _Env.jwtTokenExpiresInMins;

  @EnviedField(varName: 'JWT_AUDIENCE')
  static final jwtAudience = _Env.jwtAudience;

  static final songDir = 'D:/Music/';

  static final defaultSongName = 'Wild One - Jerry Lee Lewis.mp3';

  static final questionsPath =
      'D:/Dart_Projects/loud_question_server/questions.json';

  static final dbPath = 'D:/Trash/loud_question';
}
