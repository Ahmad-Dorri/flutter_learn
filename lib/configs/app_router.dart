import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/learn/learn.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RoutePaths.subcategory:
        final args = settings.arguments as SubcategoryScreenArguments;
        return MaterialPageRoute(
          builder: (_) => SubcategoryScreen(subcategory: args.subcategory),
        );
      case RoutePaths.learn:
        final args = settings.arguments as LearnScreenArguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ReviewCubit>(
            create: (context) => ReviewCubit(),
            child: LearnScreen(learnArgs: args),
          ),
        );
      case RoutePaths.congrats:
        return MaterialPageRoute(builder: (_) => const CongratsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
