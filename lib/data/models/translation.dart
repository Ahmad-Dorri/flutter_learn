import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:langeek_flutter/configs/constants.dart';
import 'word_photo.dart';

part 'translation.g.dart';

@JsonSerializable()
@HiveType(typeId: kStorageTranslation)
final class Translation {
  const Translation({
    required this.id,
    this.wordPhoto,
    this.translation,
    this.title,
    this.type,
    this.titleVoice,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final WordPhoto? wordPhoto;

  @HiveField(2)
  final String? translation;

  @HiveField(3)
  final String? title;

  @HiveField(4)
  final String? type;

  @HiveField(5)
  final String? titleVoice;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
