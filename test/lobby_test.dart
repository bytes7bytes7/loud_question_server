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
  return Uri.parse('$host/lobby$path');
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
  });

  tearDownAll(() => p.kill());

  test('Create lobby without token - Error', () async {
    final response = await post(
      _createUri(host, '/new'),
      body: jsonEncoder.convert(
        {
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

  test('Create lobby - OK', () async {
    final response = await post(
      _createUri(host, '/new'),
      headers: _addTokenToHeaders({}, token),
      body: jsonEncoder.convert(
        {
          'password': 'a',
        },
      ),
    );

    expect(response.statusCode, HttpStatus.created);
    expect(
      jsonDecoder.convert(response.body),
      containsPair('lobby', isNotNull),
    );
  });

  test('Join lobby without token - Error', () async {
    final createLobbyResponse = await post(
      _createUri(host, '/new'),
      headers: _addTokenToHeaders({}, token),
      body: jsonEncoder.convert(
        {
          'password': 'a',
        },
      ),
    );

    final lobbyID =
        // ignore: avoid_dynamic_calls
        jsonDecoder.convert(createLobbyResponse.body)['lobby']['id']['value'];

    final response = await post(
      _createUri(host, '/$lobbyID/join'),
      body: jsonEncoder.convert(
        {
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
}
