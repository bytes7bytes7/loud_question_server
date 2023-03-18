import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';

void main() {
  final jsonEncoder = JsonEncoder();
  final jsonDecoder = JsonDecoder();

  final port = '8080';
  final host = 'http://127.0.0.1:$port';
  late Process p;

  setUp(() async {
    p = await Process.start(
      'dart',
      ['run', 'bin/server.dart'],
      environment: {'PORT': port},
    );

    // Wait for server to start and print to stdout.
    await p.stdout.first;
  });

  tearDown(() => p.kill());

  test('Register first time', () async {
    final response = await post(
      Uri.parse('$host/auth/register'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, 200);
    expect(jsonDecoder.convert(response.body), containsPair('token', isNotNull));
  });
}
