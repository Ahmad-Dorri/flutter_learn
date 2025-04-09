import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:langeek_flutter/learn/learn.dart';
import 'package:langeek_flutter/utils/audio_manager.dart';

final locator = GetIt.I;

void setup() {
  locator.registerLazySingleton<Dio>(() => Dio());

  locator.registerSingleton(AudioPlayer());
  locator.registerSingleton(
    AudioManager(player: locator<AudioPlayer>()),
  );

  // repositories
  locator.registerLazySingleton<SubcategoryRepository>(
    () => SubcategoryRepository(dio: locator<Dio>()),
  );

  // blocs
  locator.registerFactory<SubcategoryCubit>(
    () => SubcategoryCubit(repository: locator<SubcategoryRepository>()),
  );
  locator.registerFactory<ReviewCubit>(() => ReviewCubit());
}
