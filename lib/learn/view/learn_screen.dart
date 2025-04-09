import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_flutter/configs/route_paths.dart';
import 'package:langeek_flutter/learn/learn.dart';
import 'package:langeek_flutter/learn/widgets/player.dart';

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
          Expanded(child: _buildCardCarousel()),
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: BlocBuilder<ReviewCubit, ReviewState>(
                builder: (context, state) {
                  final card = widget.learnArgs.cards[state.currentIndex];
                  return Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 16),
                            _buildImage(card),
                            const SizedBox(height: 16),
                            _buildTitleRow(card),
                            const SizedBox(height: 8),
                            Text(
                              card.phonetic,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildTypeBadge(card),
                            const SizedBox(height: 16),
                            Text(
                              card.mainTranslation.translation,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 240,
                          child: _buildNavigationButtons(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildImage(CardModel card) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: CachedNetworkImage(
        imageUrl: card.mainTranslation.wordPhoto.photo,
        height: 192,
        width: 240,
        placeholder: (context, url) => SizedBox(
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey.shade300,
            ),
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) => SizedBox(
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey.shade200,
            ),
            alignment: Alignment.center,
            child: const Icon(Icons.error, color: Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleRow(CardModel card) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          card.title,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8),
        Player(url: card.mainTranslation.titleVoice),
      ],
    );
  }

  Widget _buildTypeBadge(CardModel card) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.blue,
      ),
      child: Text(
        card.mainTranslation.type,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
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
              onPressed: () => context.read<ReviewCubit>().goToNext(),
            ),
          ],
        );
      },
    );
  }
}
