import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/learn/learn.dart';
import 'package:langeek_flutter/widgets/base/screen_util_base.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.home:
        return MaterialPageRoute(
          builder: (context) => ScreenUtilBase(
            buildContext: context,
            widget: const HomeScreen(),
          ),
        );
      case RoutePaths.subcategory:
        final args = settings.arguments as SubcategoryScreenArguments;
        return MaterialPageRoute(
          builder: (context) => ScreenUtilBase(
            buildContext: context,
            widget: SubcategoryScreen(subcategory: args.subcategory),
          ),
        );
      case RoutePaths.learn:
        final args = settings.arguments as LearnScreenArguments;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<ReviewCubit>(
            create: (context) => ReviewCubit(),
            child: ScreenUtilBase(
              buildContext: context,
              widget: LearnScreen(learnArgs: args),
            ),
          ),
        );
      case RoutePaths.congrats:
        return MaterialPageRoute(
          builder: (context) => ScreenUtilBase(
            buildContext: context,
            widget: const CongratsScreen(),
          ),
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
