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
    final heroTag = 'subcategoryImage-${subcategory.id}';
    return Scaffold(
      appBar: AppBar(title: Text(subcategory.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: heroTag,
              child: Image.network(
                subcategory.photo,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
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
                    heroTag: heroTag,
                    heroImage: subcategory.photo
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
