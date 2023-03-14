import 'dart:convert';
import 'dart:io';

import 'package:problem_details/problem_details.dart';
import 'package:shelf/shelf.dart';

import 'content_type_x.dart';

extension ResponseX on Response {
  static Response problem({
    required ProblemDetails problemDetails,
    Encoding? encoding,
    Map<String, Object>? context,
  }) =>
      Response(
        problemDetails.status,
        headers: {
          HttpHeaders.contentTypeHeader: ContentTypeX.problemJson.toString(),
        },
        body: json.encode(problemDetails.toJson()),
        context: context,
        encoding: encoding,
      );
}
