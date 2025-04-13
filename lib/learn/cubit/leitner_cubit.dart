import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:langeek_flutter/data/data.dart';
import 'package:langeek_flutter/data/services/repositories/leitner_repository.dart';

part 'leitner_state.dart';
part 'leitner_cubit.freezed.dart';

class LeitnerCubit extends Cubit<LeitnerState> {
  LeitnerCubit({required this.repository}) : super(const LeitnerState());

  final LeitnerRepository repository;

  void loadCards() {
    final cards = repository.getCards();
    if (cards.isEmpty) {
      emit(state.copyWith(cards: []));
      return;
    }
    emit(state.copyWith(cards: List<CardModel>.from(cards)));
  }

  void addCard(CardModel card) {
    final updatedCards = List<CardModel>.from(state.cards)..add(card);
    repository.addCard(card);
    emit(state.copyWith(cards: updatedCards));
  }

  void resetLeitner() {
    repository.resetLeitner();
    emit(state.copyWith(cards: []));
  }
}
