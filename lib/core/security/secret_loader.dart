import 'dart:async' show Future;
import 'dart:convert' show json;
import 'package:flutter/services.dart' show rootBundle;
import 'package:kuyisi/core/security/secret.dart';

class SecretLoader {
  final String secretPath;

  SecretLoader({
    required this.secretPath,
  });

  Future<Secret> load() {
    return rootBundle.loadStructuredData(secretPath, (value) async {
      return Secret.fromJson(json.decode(value));
    });
  }
}
