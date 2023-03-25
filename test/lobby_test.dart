import 'dart:convert';

import 'package:http/http.dart';
import 'package:loud_question_server/loud_question_server.dart';
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

  group('Lobby', () {
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
        containsPair('title', NoTokenProvided().description),
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
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Join non existent lobby - Error', () async {
      final response = await post(
        _createUri(host, '/1/join'),
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'password': 'a',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.notFound);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', LobbyDoesNotExist().description),
      );
    });

    test('Join lobby with wrong password - Error', () async {
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
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'password': '123',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', WrongLobbyPassword().description),
      );
    });

    test('Join lobby twice - Error', () async {
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
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'password': 'a',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouAlreadyJointLobby().description),
      );
    });

    test('Join lobby - OK', () async {
      final registerResponse = await post(
        Uri.parse('$host/auth/register'),
        body: jsonEncoder.convert(
          {
            'name': 'c',
            'password': 'a',
          },
        ),
      );

      // ignore: avoid_dynamic_calls
      final tempToken = jsonDecoder.convert(registerResponse.body)['token'];

      final createLobbyResponse = await post(
        _createUri(host, '/new'),
        headers: _addTokenToHeaders({}, tempToken),
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
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'password': 'a',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.ok);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('lobby', isNotNull),
      );
    });

    test('Get all lobbies without token - Error', () async {
      final response = await get(
        _createUri(host, '/all'),
      );

      expect(response.statusCode, HttpStatus.unauthorized);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Get all lobbies - OK', () async {
      final response = await get(
        _createUri(host, '/all'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.ok);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('lobbies', isNotNull),
      );
    });
  });
}
