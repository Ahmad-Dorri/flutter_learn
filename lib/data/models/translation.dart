import 'package:freezed_annotation/freezed_annotation.dart';
import 'word_photo.dart';

part 'translation.g.dart';

@JsonSerializable()
final class Translation {
  const Translation({
    required this.id,
    required this.wordPhoto,
    required this.translation,
    required this.title,
    required this.type,
    required this.titleVoice,
  });

  final int id;
  final WordPhoto wordPhoto;
  final String translation;
  final String title;
  final String type;
  final String titleVoice;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
