part of 'subcategory_bloc.dart';

enum SubcategoryStatus { idle, loading, success, failure }

class SubcategoryState extends Equatable {
  final SubcategoryStatus status;
  final Subcategory? subcategory;
  final String? error;

  const SubcategoryState({
    this.status = SubcategoryStatus.idle,
    this.subcategory,
    this.error,
  });

  SubcategoryState copyWith({
    SubcategoryStatus? status,
    Subcategory? subcategory,
    String? error,
  }) {
    return SubcategoryState(
      status: status ?? this.status,
      subcategory: subcategory ?? this.subcategory,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, subcategory, error];
}
