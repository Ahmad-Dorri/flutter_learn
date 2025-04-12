// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      id: (json['id'] as num).toInt(),
      wordPhoto: WordPhoto.fromJson(json['wordPhoto'] as Map<String, dynamic>),
      translation: json['translation'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      titleVoice: json['titleVoice'] as String,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wordPhoto': instance.wordPhoto,
      'translation': instance.translation,
      'title': instance.title,
      'type': instance.type,
      'titleVoice': instance.titleVoice,
    };
