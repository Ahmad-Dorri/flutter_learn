import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/learn/bloc/subcategory_bloc.dart';

class SubcategoryScreen extends StatelessWidget {
  final int subcategoryId;

  const SubcategoryScreen({super.key, required this.subcategoryId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<SubcategoryBloc>()..add(SubcategoryFetched(subcategoryId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Subcategory')),
        body: BlocBuilder<SubcategoryBloc, SubcategoryState>(
          builder: (context, state) {
            if (state.status == SubcategoryStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == SubcategoryStatus.failure) {
              return Center(
                child: Text('Error: ${state.error}'),
              );
            } else if (state.status == SubcategoryStatus.success &&
                state.subcategory != null) {
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text(
                    state.subcategory!.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Text('Original Title: ${state.subcategory!.originalTitle}'),
                ],
              );
            }
            return const SizedBox(); // Idle state
          },
        ),
      ),
    );
  }
}
