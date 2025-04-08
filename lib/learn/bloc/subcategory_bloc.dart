import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:langeek_flutter/learn/data/data.dart';

part 'subcategory_event.dart';
part 'subcategory_state.dart';

/// ### This bloc has no usage in the code base but I created it to compare it with the cubit implementation.
class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  final SubcategoryRepository repository;

  SubcategoryBloc({required this.repository})
      : super(const SubcategoryState()) {
    on<SubcategoryFetched>(_onFetchSubcategory);
  }

  Future<void> _onFetchSubcategory(
    SubcategoryFetched event,
    Emitter<SubcategoryState> emit,
  ) async {
    emit(state.copyWith(status: SubcategoryStatus.loading));
    try {
      final subcategory = await repository.fetchSubcategory(event.id);
      emit(state.copyWith(
        status: SubcategoryStatus.success,
        subcategory: subcategory,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SubcategoryStatus.failure,
        error: e.toString(),
      ));
    }
  }
}
