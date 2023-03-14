import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';

import '../../application/services/hash_service.dart';

@Singleton(as: HashService)
class ProdHashService implements HashService {
  const ProdHashService();

  @override
  String hashPassword(String password) {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
