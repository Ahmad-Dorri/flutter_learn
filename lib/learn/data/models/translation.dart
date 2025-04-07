import 'package:freezed_annotation/freezed_annotation.dart';
import 'part_of_speech.dart';
import 'word_photo.dart';
import 'metadata.dart';

part 'translation.g.dart';

@JsonSerializable()
final class Translation {
  const Translation({
    required this.id,
    required this.partOfSpeech,
    required this.wordPhoto,
    required this.synonymCluster,
    required this.position,
    required this.translation,
    required this.alternativeTranslation,
    required this.otherTranslations,
    required this.pronunciation,
    required this.descriptionTitle,
    required this.description,
    required this.synonyms,
    required this.similarTranslations,
    required this.antonyms,
    required this.tags,
    required this.level,
    required this.isDialectSpecific,
    required this.hideNLPExamples,
    required this.visibility,
    required this.wiki,
    required this.updatedAt,
    required this.metadata,
    required this.localizedProperties,
    required this.automatedTranslatorDefinition,
    required this.title,
    required this.type,
    required this.hashedFields,
    required this.titleVoice,
    required this.titleTranscription,
  });

  final int id;
  final PartOfSpeech partOfSpeech;
  final WordPhoto wordPhoto;
  final dynamic synonymCluster;
  final int position;
  final String translation;
  final String alternativeTranslation;
  final String otherTranslations;
  final String pronunciation;
  final String descriptionTitle;
  final String description;
  final List<dynamic> synonyms;
  final List<dynamic> similarTranslations;
  final List<dynamic> antonyms;
  final List<dynamic> tags;
  final String level;
  final bool isDialectSpecific;
  final bool hideNLPExamples;
  final String visibility;
  final String wiki;
  final DateTime updatedAt;
  final Metadata metadata;
  final Map<String, dynamic> localizedProperties;
  final String automatedTranslatorDefinition;
  final String title;
  final String type;
  final Map<String, dynamic> hashedFields;
  final String titleVoice;
  final String titleTranscription;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
