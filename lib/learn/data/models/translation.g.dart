// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      id: (json['id'] as num).toInt(),
      partOfSpeech:
          PartOfSpeech.fromJson(json['partOfSpeech'] as Map<String, dynamic>),
      wordPhoto: WordPhoto.fromJson(json['wordPhoto'] as Map<String, dynamic>),
      synonymCluster: json['synonymCluster'],
      position: (json['position'] as num).toInt(),
      translation: json['translation'] as String,
      alternativeTranslation: json['alternativeTranslation'] as String,
      otherTranslations: json['otherTranslations'] as String,
      pronunciation: json['pronunciation'] as String,
      descriptionTitle: json['descriptionTitle'] as String,
      description: json['description'] as String,
      synonyms: json['synonyms'] as List<dynamic>,
      similarTranslations: json['similarTranslations'] as List<dynamic>,
      antonyms: json['antonyms'] as List<dynamic>,
      tags: json['tags'] as List<dynamic>,
      level: json['level'] as String,
      isDialectSpecific: json['isDialectSpecific'] as bool,
      hideNLPExamples: json['hideNLPExamples'] as bool,
      visibility: json['visibility'] as String,
      wiki: json['wiki'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      localizedProperties: json['localizedProperties'] as Map<String, dynamic>,
      automatedTranslatorDefinition:
          json['automatedTranslatorDefinition'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      hashedFields: json['hashedFields'] as Map<String, dynamic>,
      titleVoice: json['titleVoice'] as String,
      titleTranscription: json['titleTranscription'] as String,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partOfSpeech': instance.partOfSpeech,
      'wordPhoto': instance.wordPhoto,
      'synonymCluster': instance.synonymCluster,
      'position': instance.position,
      'translation': instance.translation,
      'alternativeTranslation': instance.alternativeTranslation,
      'otherTranslations': instance.otherTranslations,
      'pronunciation': instance.pronunciation,
      'descriptionTitle': instance.descriptionTitle,
      'description': instance.description,
      'synonyms': instance.synonyms,
      'similarTranslations': instance.similarTranslations,
      'antonyms': instance.antonyms,
      'tags': instance.tags,
      'level': instance.level,
      'isDialectSpecific': instance.isDialectSpecific,
      'hideNLPExamples': instance.hideNLPExamples,
      'visibility': instance.visibility,
      'wiki': instance.wiki,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'metadata': instance.metadata,
      'localizedProperties': instance.localizedProperties,
      'automatedTranslatorDefinition': instance.automatedTranslatorDefinition,
      'title': instance.title,
      'type': instance.type,
      'hashedFields': instance.hashedFields,
      'titleVoice': instance.titleVoice,
      'titleTranscription': instance.titleTranscription,
    };
