// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_analyzed_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NlpAnalyzedData _$NlpAnalyzedDataFromJson(Map<String, dynamic> json) =>
    NlpAnalyzedData(
      pluralForm: json['pluralForm'],
      isProperName: json['isProperName'],
      isCompoundNoun: json['isCompoundNoun'],
      letters: (json['letters'] as List<dynamic>)
          .map((e) => Letter.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOfSpeech: json['partOfSpeech'] as String,
      pronunciationIPA: json['pronunciationIPA'] as String,
      pronunciationSimplified: json['pronunciationSimplified'] as String,
      readingDifficultyScore: json['readingDifficultyScore'] as String,
      spellingDifficultyScore: json['spellingDifficultyScore'] as String,
      version: (json['version'] as num).toInt(),
      word: json['word'] as String,
      wordTree: WordTree.fromJson(json['wordTree'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NlpAnalyzedDataToJson(NlpAnalyzedData instance) =>
    <String, dynamic>{
      'pluralForm': instance.pluralForm,
      'isProperName': instance.isProperName,
      'isCompoundNoun': instance.isCompoundNoun,
      'letters': instance.letters,
      'partOfSpeech': instance.partOfSpeech,
      'pronunciationIPA': instance.pronunciationIPA,
      'pronunciationSimplified': instance.pronunciationSimplified,
      'readingDifficultyScore': instance.readingDifficultyScore,
      'spellingDifficultyScore': instance.spellingDifficultyScore,
      'version': instance.version,
      'word': instance.word,
      'wordTree': instance.wordTree,
    };
