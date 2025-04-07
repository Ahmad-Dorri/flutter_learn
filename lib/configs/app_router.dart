import 'package:flutter/material.dart';
import 'package:langeek_flutter/learn/learn.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/subcategory':
        final args = settings.arguments as SubcategoryScreenArguments;
        return MaterialPageRoute(
          builder: (_) => SubcategoryScreen(subcategory: args.subcategory),
        );
      case '/learn':
        final args = settings.arguments as LearnScreenArguments;
        return MaterialPageRoute(
          builder: (_) => LearnScreen(learnArgs: args),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
