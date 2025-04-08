import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/learn/cubit/subcategory_cubit.dart';
import 'subcategory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final int subcategoryId = 13;

  void _getSubcategory(BuildContext context) {
    context.read<SubcategoryCubit>().getSubcategory(subcategoryId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubcategoryCubit>(
      create: (_) => locator<SubcategoryCubit>(),
      child: BlocListener<SubcategoryCubit, SubcategoryState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (subcategory) {
              Navigator.of(context).pushReplacementNamed(
                RoutePaths.subcategory,
                arguments: SubcategoryScreenArguments(subcategory: subcategory),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          body: Center(
            child: BlocBuilder<SubcategoryCubit, SubcategoryState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Center(
                    child: ElevatedButton(
                      onPressed: () => _getSubcategory(context),
                      child: const Text('get subcategory'),
                    ),
                  ),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (subcategory) => const SizedBox(),
                  error: (message) => Text(message),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
