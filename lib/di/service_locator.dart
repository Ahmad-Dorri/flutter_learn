import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:langeek_flutter/configs/app_config.dart';
import 'package:langeek_flutter/data/data.dart';
import 'package:langeek_flutter/data/services/dio_client.dart';
import 'package:langeek_flutter/learn/learn.dart';
import 'package:langeek_flutter/utils/audio_manager.dart';

final locator = GetIt.I;

void setup(AppConfig config) {
  locator.registerLazySingleton<Dio>(() => Dio());

  locator.registerSingleton(AudioPlayer());
  locator.registerSingleton(
    AudioManager(player: locator<AudioPlayer>()),
  );
  locator.registerSingleton(DioClient(config.contentUrl, Dio()));

  // repositories
  locator.registerLazySingleton<SubcategoryRepository>(
    () => SubcategoryRepository(dioClient: locator<DioClient>()),
  );

  // blocs
  locator.registerFactory<SubcategoryCubit>(
    () => SubcategoryCubit(repository: locator<SubcategoryRepository>()),
  );
  locator.registerFactory<ReviewCubit>(() => ReviewCubit());
}
