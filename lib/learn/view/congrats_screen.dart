import 'package:flutter/material.dart';
import 'package:langeek_flutter/widgets/base/dimens.dart';
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
            SizedBox(height: Dimens.height_16),
            const Text('You finished reviewing all the cards!'),
            SizedBox(height: Dimens.height_32),
          ],
        ),
      ),
    );
  }
}
