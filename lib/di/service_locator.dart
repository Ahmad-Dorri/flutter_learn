import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:langeek_flutter/learn/cubit/subcategory_cubit.dart';
import 'package:langeek_flutter/learn/data/repository/subcategory_repository.dart';

final locator = GetIt.I;

void setup() {
  locator.registerLazySingleton<Dio>(() => Dio());

  // repositories
  locator.registerLazySingleton<SubcategoryRepository>(
    () => SubcategoryRepository(dio: locator<Dio>()),
  );

  // blocs
  locator.registerFactory<SubcategoryCubit>(
    () => SubcategoryCubit(repository: locator<SubcategoryRepository>()),
  );
}
