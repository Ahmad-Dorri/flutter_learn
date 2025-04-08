import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/learn/learn.dart';

class LearnScreenArguments {
  final List<CardModel> cards;

  const LearnScreenArguments({
    required this.cards,
  });
}

class LearnScreen extends StatefulWidget {
  final LearnScreenArguments learnArgs;
  const LearnScreen({
    super.key,
    required this.learnArgs,
  });

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ReviewCubit>().setTotalCards(widget.learnArgs.cards.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildProgressBar(),
          const SizedBox(height: 16),
          _buildCardCarousel(),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return BlocListener<ReviewCubit, ReviewState>(
      listenWhen: (previous, current) =>
          previous.isFinished != current.isFinished && current.isFinished,
      listener: (context, state) {
        Navigator.of(context).pushReplacementNamed(RoutePaths.congrats);
      },
      child: BlocBuilder<ReviewCubit, ReviewState>(
        builder: (context, state) {
          final progress = state.totalCards == 0
              ? 0.0
              : (state.currentIndex + 1) / state.totalCards;
          return LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.shade300,
            color: Colors.blue,
            minHeight: 6,
          );
        },
      ),
    );
  }

  Widget _buildCardCarousel() {
    return Expanded(
      child: BlocBuilder<ReviewCubit, ReviewState>(
        builder: (context, state) {
          final card = widget.learnArgs.cards[state.currentIndex];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 6,
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: card.mainTranslation.wordPhoto.photo,
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        placeholder: (context, url) => SizedBox(
                          height: 200,
                          child: Container(
                            color: Colors.grey.shade300,
                            alignment: Alignment.center,
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
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        card.title,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.black),
                      ),
                      _buildNavigationButtons(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return BlocBuilder<ReviewCubit, ReviewState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: 36,
              icon: const Icon(Icons.chevron_left, color: Colors.blue),
              onPressed: state.currentIndex > 0
                  ? () => context.read<ReviewCubit>().goToPrevious()
                  : null,
            ),
            IconButton(
                iconSize: 36,
                icon: const Icon(Icons.chevron_right, color: Colors.blue),
                onPressed: () => context.read<ReviewCubit>().goToNext()),
          ],
        );
      },
    );
  }
}
