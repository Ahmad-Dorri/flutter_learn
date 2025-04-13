part of 'leitner_cubit.dart';

@freezed
class LeitnerState with _$LeitnerState {
  const factory LeitnerState({
    @Default([]) List<CardModel> cards,
  }) = _LeitnerState;
}
