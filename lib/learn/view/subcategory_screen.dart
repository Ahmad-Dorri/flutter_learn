import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:langeek_flutter/learn/learn.dart';

class SubcategoryScreenArguments {
  final Subcategory subcategory;
  const SubcategoryScreenArguments({required this.subcategory});
}

class SubcategoryScreen extends StatelessWidget {
  final Subcategory subcategory;

  const SubcategoryScreen({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subcategory.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              subcategory.photo,
              width: double.infinity,
              fit: BoxFit.cover,
              height: 200,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            const SizedBox(height: 16),
            Text(
              subcategory.title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            Text('Original: ${subcategory.originalTitle}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/learn',
                  arguments: LearnScreenArguments(
                    cards: subcategory.cards,
                  ),
                );
              },
              child: const Text('Learn Cards'),
            ),
          ],
        ),
      ),
    );
  }
}
