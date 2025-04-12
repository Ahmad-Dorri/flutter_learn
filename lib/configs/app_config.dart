import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  final String baseUrl;
  final String contentUrl;

  AppConfig({
    required this.baseUrl,
    required this.contentUrl,
  });

  static Future<AppConfig> forEnvironment() async {

    final contents = await rootBundle.loadString(
      'assets/config/dev.json',
    );

    final json = jsonDecode(contents);

    return AppConfig(
      baseUrl: json['baseUrl'],
      contentUrl: json['contentUrl'],
    );
  }
}
