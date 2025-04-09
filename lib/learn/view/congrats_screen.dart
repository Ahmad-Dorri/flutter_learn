import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/congrats.json'),
            const SizedBox(height: 16),
            const Text('You finished reviewing all the cards!'),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
