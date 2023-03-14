import 'dart:io';

extension ContentTypeX on ContentType {
  static final problemJson =
      ContentType('application', 'problem+json', charset: 'utf-8');
}
