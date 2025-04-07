import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/learn/bloc/subcategory_bloc.dart';
import 'subcategory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final int subcategoryId = 13;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<SubcategoryBloc>()
        ..add(
          SubcategoryFetched(subcategoryId),
        ),
      child: BlocListener<SubcategoryBloc, SubcategoryState>(
        listener: (context, state) {
          if (state.status == SubcategoryStatus.success &&
              state.subcategory != null) {
            Navigator.of(context).pushReplacementNamed(
              '/subcategory',
              arguments:
                  SubcategoryScreenArguments(subcategory: state.subcategory!),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Loading Subcategory'),
          ),
          body: Center(
            child: BlocBuilder<SubcategoryBloc, SubcategoryState>(
              builder: (context, state) {
                if (state.status == SubcategoryStatus.loading) {
                  return const CircularProgressIndicator();
                } else if (state.status == SubcategoryStatus.failure) {
                  return Text('Error: ${state.error}');
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}
