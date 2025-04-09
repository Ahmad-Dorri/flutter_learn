import 'package:flutter/material.dart';
import 'package:langeek_flutter/app.dart';
import 'package:langeek_flutter/di/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const App());
}
