import 'package:flutter/material.dart';
import 'package:langeek_flutter/learn/data/data.dart';

class LearnScreenArguments {
  final List<CardModel> cards;

  const LearnScreenArguments({
    required this.cards,
  });
}

class LearnScreen extends StatelessWidget {
  final LearnScreenArguments learnArgs;
  const LearnScreen({
    super.key,
    required this.learnArgs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Cards'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: learnArgs.cards.length,
              itemBuilder: (context, index) {
                final card = learnArgs.cards[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            card.title,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(card.phonetic),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
