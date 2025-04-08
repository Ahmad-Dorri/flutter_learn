import 'package:flutter/material.dart';
import 'package:langeek_flutter/configs/route_paths.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '🎉 Congratulations!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('You finished reviewing all the cards!'),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName(RoutePaths.subcategory));
              },
              child: const Text('Back to subcategory'),
            ),
          ],
        ),
      ),
    );
  }
}
