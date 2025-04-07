part of 'subcategory_bloc.dart';

abstract class SubcategoryEvent extends Equatable {
  const SubcategoryEvent();

  @override
  List<Object?> get props => [];
}

class SubcategoryFetched extends SubcategoryEvent {
  final int id;

  const SubcategoryFetched(this.id);

  @override
  List<Object?> get props => [id];
}
