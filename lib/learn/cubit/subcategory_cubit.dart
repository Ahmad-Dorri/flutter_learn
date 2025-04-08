import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:langeek_flutter/learn/learn.dart';

part 'subcategory_state.dart';
part 'subcategory_cubit.freezed.dart';

class SubcategoryCubit extends Cubit<SubcategoryState> {
  SubcategoryCubit({required this.repository})
      : super(const SubcategoryState.initial());

  final SubcategoryRepository repository;

  getSubcategory(int id) async {
    try {
      emit(const SubcategoryState.loading());
      Subcategory subcategory = await repository.fetchSubcategory(id);
      emit(SubcategoryState.loaded(subcategory: subcategory));
    } catch (e) {
      emit(SubcategoryState.error(message: e.toString()));
    }
  }
}
