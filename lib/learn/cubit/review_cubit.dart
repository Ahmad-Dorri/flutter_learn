import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_state.dart';
part 'review_cubit.freezed.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit() : super(const ReviewState());

  void setTotalCards(int total) {
    emit(state.copyWith(totalCards: total));
  }

  void goToNext() {
    if (state.currentIndex < state.totalCards - 1) {
      emit(state.copyWith(currentIndex: state.currentIndex + 1));
    } else {
      emit(state.copyWith(isFinished: true));
    }
  }

  void goToPrevious() {
    if (state.currentIndex > 0) {
      emit(state.copyWith(currentIndex: state.currentIndex - 1));
    }
  }
}
