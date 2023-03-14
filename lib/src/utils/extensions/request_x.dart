import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../features/common/domain/domain.dart';

const _shelfConnectionInfoKey = 'shelf.io.connection_info';
const _userContextKey = 'user';
const _tokenHeadersKey1 = 'Authorization';
const _tokenHeadersKey2 = 'authorization';
const _tokenPrefix = 'Bearer ';

extension RequestX on Request {
  HttpConnectionInfo get connectionInfo {
    return context[_shelfConnectionInfoKey] as HttpConnectionInfo;
  }

  Request setUser(EndUser user) {
    return change(
      context: Map<String, Object?>.from(context)
        ..[_userContextKey] = user,
    );
  }

  Request removeUser() {
    return change(
      context: Map<String, Object?>.from(context)
        ..remove(_userContextKey),
    );
  }

  EndUser? get user {
    return context[_userContextKey] as EndUser?;
  }

  Request setToken(String token) {
    return change(
      headers: Map<String, Object?>.from(headers)
        ..[_tokenHeadersKey1] = '$_tokenPrefix $token',
    );
  }

  Request removeToken() {
    return change(
      headers: Map<String, Object?>.from(headers)
        ..remove(_tokenHeadersKey1)..remove(_tokenHeadersKey2),
    );
  }

  String? get token {
    final header = authHeader;

    if (header == null) {
      return null;
    }

    if (header.startsWith(_tokenPrefix)) {
      final result = header.replaceFirst(_tokenPrefix, '').trim();

      if (result.isEmpty) {
        return null;
      }

      return result;
    }

    return null;
  }

  String? get authHeader {
    return headers[_tokenHeadersKey1] ?? headers[_tokenHeadersKey2];
  }
}
