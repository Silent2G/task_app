import 'dart:convert';
import 'package:crypto/crypto.dart';

class TokenGenerator {
  static String generateToken(String username, String password) {
    final combinedString = '$username:$password';

    final bytes = utf8.encode(combinedString);
    final digest = sha256.convert(bytes);

    return digest.toString();
  }
}
