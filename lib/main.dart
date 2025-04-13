import 'package:flutter/material.dart';
import 'package:langeek_flutter/app.dart';
import 'package:langeek_flutter/configs/app_config.dart';
import 'package:langeek_flutter/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = await AppConfig.forEnvironment();
  await setup(AppConfig(baseUrl: config.baseUrl, contentUrl: config.contentUrl));

  runApp(const App());
}
