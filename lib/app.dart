import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/app_router.dart';
import 'package:langeek_flutter/data/services/repositories/leitner_repository.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/learn/cubit/leitner_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LeitnerCubit>(
          create: (context) => LeitnerCubit(
            repository: locator<LeitnerRepository>(),
          )..loadCards(),
        )
      ],
      child: MaterialApp(
        title: 'Langeek learn',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
