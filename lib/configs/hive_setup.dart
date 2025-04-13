import 'package:hive_flutter/hive_flutter.dart';
import 'package:langeek_flutter/configs/constants.dart';
import 'package:langeek_flutter/data/data.dart';

Future<Box<CardModel>> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CardModelAdapter());
  Hive.registerAdapter(WordPhotoAdapter());
  Hive.registerAdapter(TranslationAdapter());

  var box = await Hive.openBox<CardModel>(kLeitnerBox);

  return box;
}
