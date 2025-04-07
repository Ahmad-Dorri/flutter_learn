// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_tree_root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordTreeRoot _$WordTreeRootFromJson(Map<String, dynamic> json) => WordTreeRoot(
      partOfSpeech: json['partOfSpeech'] as String,
      prefix: json['prefix'] as String,
      suffix: json['suffix'] as String,
      translationIds: json['translationIds'] as List<dynamic>,
      word: json['word'] as String,
    );

Map<String, dynamic> _$WordTreeRootToJson(WordTreeRoot instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'translationIds': instance.translationIds,
      'word': instance.word,
    };
