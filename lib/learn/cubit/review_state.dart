part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(0) int currentIndex,
    @Default(1) int totalCards,
    @Default(false) bool isFinished
  }) = _State;
}
