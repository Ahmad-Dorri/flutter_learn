import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/data/data.dart';
import 'package:langeek_flutter/data/services/result_state.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/learn/cubit/subcategory_cubit.dart';
import 'subcategory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final int subcategoryId = 5;

  void _getSubcategory(BuildContext context) {
    context.read<SubcategoryCubit>().loadSubcategory(subcategoryId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubcategoryCubit>(
      create: (_) => locator<SubcategoryCubit>(),
      child: BlocListener<SubcategoryCubit, ResultState<Subcategory>>(
        listener: (context, state) {
          state.maybeWhen(
            data: (subcategory) {
              Navigator.of(context).pushReplacementNamed(
                RoutePaths.subcategory,
                arguments: SubcategoryScreenArguments(subcategory: subcategory),
              );
            },
            error: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.toString()),
                  duration: const Duration(seconds: 10),
                ),
              );
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          body: BlocBuilder<SubcategoryCubit, ResultState<Subcategory>>(
            builder: (context, state) {
              return state.when(
                idle: () => Center(
                  child: ElevatedButton(
                    onPressed: () => _getSubcategory(context),
                    child: const Text('get subcategory'),
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                data: (subcategory) => const SizedBox(),
                error: (e) => Center(
                  child: Column(
                    children: [
                      Text(e.toString()),
                      ElevatedButton(
                        onPressed: () {
                          _getSubcategory(context);
                        },
                        child: const Text('try again'),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
