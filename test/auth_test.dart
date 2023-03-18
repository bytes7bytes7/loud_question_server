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

Uri _createUri(String host, String path) {
  return Uri.parse('$host/auth$path');
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
      _createUri(host, '/register'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.created);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('token', isNotNull),
    );
  });

  test('Register first time - Error', () async {
    final response = await post(
      _createUri(host, '/register'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.conflict);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log in before register - Error', () async {
    final response = await post(
      _createUri(host, '/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'b',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.unauthorized);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });


  test('Log in with wrong credentials - Error', () async {
    final response = await post(
      _createUri(host, '/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': '2',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.unauthorized);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log in after register - OK', () async {
    final response = await post(
      _createUri(host, '/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.ok);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('token', isNotNull),
    );
  });

  test('Log out without token - Error', () async {
    final response = await post(
      _createUri(host, '/log_out'),
    );

    expect(response.statusCode, HttpStatus.unauthorized);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Log out without token - OK', () async {
    final logInResponse = await post(
      _createUri(host, '/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    // ignore: avoid_dynamic_calls
    token = jsonDecoder.convert(logInResponse.body)['token'];

    final response = await post(
      _createUri(host, '/log_out'),
      headers: _addTokenToHeaders({}, token),
    );

    expect(response.statusCode, HttpStatus.ok);
  });

  test('Verify token without token - Error', () async {
    final response = await get(
      _createUri(host, '/verify_token'),
    );

    expect(response.statusCode, HttpStatus.unauthorized);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Verify token with incorrect token - Error', () async {
    final response = await get(
      _createUri(host, '/verify_token'),
      headers: _addTokenToHeaders({}, '123'),
    );

    expect(response.statusCode, HttpStatus.unauthorized);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('title', isNotNull),
    );
  });

  test('Verify token - OK', () async {
    final logInResponse = await post(
      _createUri(host, '/log_in'),
      body: jsonEncoder.convert(
        {
          'name': 'a',
          'password': 'a',
        },
      ),
    );

    // ignore: avoid_dynamic_calls
    token = jsonDecoder.convert(logInResponse.body)['token'];

    final response = await get(
      _createUri(host, '/verify_token'),
      headers: _addTokenToHeaders({}, token),
    );

    expect(response.statusCode, HttpStatus.ok);
  });
}
