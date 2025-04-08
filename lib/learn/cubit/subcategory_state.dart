part of 'subcategory_cubit.dart';

@freezed
class SubcategoryState with _$SubcategoryState {
  const factory SubcategoryState.initial() = _Initial;
  const factory SubcategoryState.loading() = _Loading;
  const factory SubcategoryState.loaded({
    required Subcategory subcategory,
  }) = _Loaded;
  const factory SubcategoryState.error({
    required String message,
  }) = _Error;

}
