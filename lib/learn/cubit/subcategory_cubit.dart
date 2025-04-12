import 'package:bloc/bloc.dart';
import 'package:langeek_flutter/data/data.dart';
import 'package:langeek_flutter/data/services/api_result.dart';
import 'package:langeek_flutter/data/services/network_exceptions.dart';
import 'package:langeek_flutter/data/services/result_state.dart';

class SubcategoryCubit extends Cubit<ResultState<Subcategory>> {
  SubcategoryCubit({required this.repository}) : super(const Idle());

  final SubcategoryRepository repository;

  loadSubcategory(int subcategoryId) async {
    emit(const ResultState.loading());

    ApiResult<Subcategory> apiResult =
        await _fetchSubCategoryFromApi(subcategoryId);

    apiResult.when(success: (Subcategory data) async {
      emit(ResultState.data(data: data));
    }, failure: (NetworkExceptions error) {
      emit(ResultState.error(error: error));
    });
  }

  Future<ApiResult<Subcategory>> _fetchSubCategoryFromApi(
    int subcategoryId,
  ) {
    return repository.fetchSubcategory(subcategoryId);
  }
}
