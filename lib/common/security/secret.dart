import 'dart:convert';

import 'package:flutter/services.dart';

class Secret {
  final String supabaseUrl;
  final String supabaseKey;

  Secret({
    required this.supabaseKey,
    required this.supabaseUrl,
  });

  static Future<Secret> load(String secretPath) {
    return rootBundle.loadStructuredData(secretPath, (json) async {
      var map = jsonDecode(json);

      return Secret(
        supabaseUrl: map['SUPABASE_URL'],
        supabaseKey: map['SUPABASE_KEY'],
      );
    });
  }
}
