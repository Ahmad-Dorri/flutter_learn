import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
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
            CachedNetworkImage(
              imageUrl: subcategory.photo,
              placeholder: (context, url) => SizedBox(
                height: 200,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300, shape: BoxShape.circle),
                  child: const CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => SizedBox(
                height: 200,
                child: Container(
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Icon(Icons.error, color: Colors.red),
                ),
              ),
              imageBuilder: (context, imageProvider) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          image: DecorationImage(image: imageProvider),
                          shape: BoxShape.circle),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Text(
              subcategory.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              subcategory.originalTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    RoutePaths.learn,
                    arguments: LearnScreenArguments(
                      cards: subcategory.cards,
                    ),
                  );
                },
                child: const Text('Learn Cards'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
