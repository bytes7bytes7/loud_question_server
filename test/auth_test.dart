import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';

Map<String, String> _addTokenToHeaders(
  Map<String, String> headers,
  String token,
) {
  return Map.of(headers)..['Authorization'] = 'Bearer $token';
}

void main() {
  final jsonEncoder = JsonEncoder();
  final jsonDecoder = JsonDecoder();

  final port = '8080';
  final host = 'http://127.0.0.1:$port';
  late Process p;
  late String token;

  setUpAll(() async {
    p = await Process.start(
      'dart',
      ['run', 'bin/server.dart'],
      environment: {'PORT': port},
    );

    // Wait for server to start and print to stdout.
    await p.stdout.first;
  });

  tearDownAll(() => p.kill());

  test('Register first time - OK', () async {
    final response = await post(
      Uri.parse('$host/auth/register'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    // ignore: avoid_dynamic_calls
    token = jsonDecoder.convert(response.body)['token'];

    expect(response.statusCode, 200);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('token', isNotNull),
    );
  });

  test('Register first time - Error', () async {
    final response = await post(
      Uri.parse('$host/auth/register'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, 409);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log in first time - Error', () async {
    final response = await post(
      Uri.parse('$host/auth/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'b',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, 401);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log in after register - OK', () async {
    final response = await post(
      Uri.parse('$host/auth/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, 200);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('token', isNotNull),
    );
  });

  test('Log out without token - Error', () async {
    final response = await post(
      Uri.parse('$host/auth/log_out'),
    );

    expect(response.statusCode, 401);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log out without token - OK', () async {
    final response = await post(
      Uri.parse('$host/auth/log_out'),
      headers: _addTokenToHeaders({}, token),
    );

    expect(response.statusCode, 200);
  });
}
