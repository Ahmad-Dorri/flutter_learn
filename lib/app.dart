import 'package:flutter/material.dart';
import 'package:langeek_flutter/learn/learn.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Langeek learn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SubcategoryScreen(subcategoryId: 13),
    );
  }
}
