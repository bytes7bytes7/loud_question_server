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
  return Uri.parse('$host/game$path');
}

void main() {
  final jsonEncoder = JsonEncoder();
  final jsonDecoder = JsonDecoder();

  final port = '8080';
  final host = 'http://127.0.0.1:$port';
  late Process p;
  late String token;
  late String lobbyID;

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

    final newLobbyResponse = await post(
      Uri.parse('$host/lobby/new'),
      headers: _addTokenToHeaders({}, token),
      body: jsonEncoder.convert(
        {
          'password': 'a',
        },
      ),
    );

    lobbyID =
        // ignore: avoid_dynamic_calls
        jsonDecoder.convert(newLobbyResponse.body)['lobby']['id']['value'];
  });

  tearDownAll(() => p.kill());

  group('Game', () {
    test('Start, not all ready - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/start'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', UnavailableGameOperation().description),
      );
    });

    test('Give answer, not all ready - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/give_answer'),
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'answer': '1',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', UnavailableGameOperation().description),
      );
    });

    test('Get answer, not all ready - Error', () async {
      final response = await get(
        _createUri(host, '/$lobbyID/get_answer'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', UnavailableGameOperation().description),
      );
    });

    test('Set ready without token - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/ready'),
      );

      expect(response.statusCode, HttpStatus.unauthorized);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Set ready with non existent lobbyID - Error', () async {
      final response = await post(
        _createUri(host, '/1/ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.notFound);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', LobbyDoesNotExist().description),
      );
    });

    test('Set ready without joining lobby - Error', () async {
      final registerToken = await post(
        Uri.parse('$host/auth/register'),
        body: jsonEncoder.convert(
          {
            'name': DateTime.now().millisecondsSinceEpoch.toString(),
            'password': 'a',
          },
        ),
      );

      // ignore: avoid_dynamic_calls
      final tempToken = jsonDecoder.convert(registerToken.body)['token'];

      final response = await post(
        _createUri(host, '/$lobbyID/ready'),
        headers: _addTokenToHeaders({}, tempToken),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouShouldJoinLobby().description),
      );
    });

    test('Set ready - OK', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.ok);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('gameState', isNotNull),
      );
    });

    test('Set ready twice - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouAlreadyReady().description),
      );
    });

    test('Set not ready without token - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/not_ready'),
      );

      expect(response.statusCode, HttpStatus.unauthorized);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Set not ready to non existent lobby - Error', () async {
      final response = await post(
        _createUri(host, '/1/not_ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.notFound);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', LobbyDoesNotExist().description),
      );
    });

    test('Set not ready without joining lobby - Error', () async {
      final registerToken = await post(
        Uri.parse('$host/auth/register'),
        body: jsonEncoder.convert(
          {
            'name': DateTime.now().millisecondsSinceEpoch.toString(),
            'password': 'a',
          },
        ),
      );

      // ignore: avoid_dynamic_calls
      final tempToken = jsonDecoder.convert(registerToken.body)['token'];

      final response = await post(
        _createUri(host, '/$lobbyID/not_ready'),
        headers: _addTokenToHeaders({}, tempToken),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouShouldJoinLobby().description),
      );
    });

    test('Set not ready - OK', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/not_ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.ok);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('gameState', isNotNull),
      );
    });

    test('Set not ready twice - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/not_ready'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouAlreadyNotReady().description),
      );
    });

    test('Start without token - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/start'),
      );

      expect(response.statusCode, HttpStatus.unauthorized);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Start, non existent lobby - Error', () async {
      final response = await post(
        _createUri(host, '/1/start'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.notFound);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', LobbyDoesNotExist().description),
      );
    });

    test('Start without joining lobby - Error', () async {
      final registerToken = await post(
        Uri.parse('$host/auth/register'),
        body: jsonEncoder.convert(
          {
            'name': DateTime.now().millisecondsSinceEpoch.toString(),
            'password': 'a',
          },
        ),
      );

      // ignore: avoid_dynamic_calls
      final tempToken = jsonDecoder.convert(registerToken.body)['token'];

      final response = await post(
        _createUri(host, '/$lobbyID/start'),
        headers: _addTokenToHeaders({}, tempToken),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouShouldJoinLobby().description),
      );
    });

    test('Start - OK', () async {
      await post(
        _createUri(host, '/$lobbyID/ready'),
        headers: _addTokenToHeaders({}, token),
      );

      final response = await post(
        _createUri(host, '/$lobbyID/start'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.ok);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('gameState', isNotNull),
      );
    });

    test('Start twice - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/start'),
        headers: _addTokenToHeaders({}, token),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', UnavailableGameOperation().description),
      );
    });

    test('Give answer without token - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/give_answer'),
      );

      expect(response.statusCode, HttpStatus.unauthorized);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', NoTokenProvided().description),
      );
    });

    test('Give answer, non existent lobby - Error', () async {
      final response = await post(
        _createUri(host, '/1/give_answer'),
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'answer': '1',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.notFound);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', LobbyDoesNotExist().description),
      );
    });

    test('Give answer without joining lobby - Error', () async {
      final registerToken = await post(
        Uri.parse('$host/auth/register'),
        body: jsonEncoder.convert(
          {
            'name': DateTime.now().millisecondsSinceEpoch.toString(),
            'password': 'a',
          },
        ),
      );

      // ignore: avoid_dynamic_calls
      final tempToken = jsonDecoder.convert(registerToken.body)['token'];

      final response = await post(
        _createUri(host, '/$lobbyID/give_answer'),
        headers: _addTokenToHeaders({}, tempToken),
        body: jsonEncoder.convert(
          {
            'answer': '1',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', YouShouldJoinLobby().description),
      );
    });

    test('Give answer before time ends - Error', () async {
      final response = await post(
        _createUri(host, '/$lobbyID/give_answer'),
        headers: _addTokenToHeaders({}, token),
        body: jsonEncoder.convert(
          {
            'answer': '1',
          },
        ),
      );

      expect(response.statusCode, HttpStatus.conflict);
      expect(
        jsonDecoder.convert(response.body),
        containsPair('title', UnavailableGameOperation().description),
      );
    });
  });
}
