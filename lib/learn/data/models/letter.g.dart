// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Letter _$LetterFromJson(Map<String, dynamic> json) => Letter(
      letter: json['letter'] as String,
      pronunciation: json['pronunciation'] as String,
      readingScore: (json['readingScore'] as num).toInt(),
      spellingScore: (json['spellingScore'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LetterToJson(Letter instance) => <String, dynamic>{
      'letter': instance.letter,
      'pronunciation': instance.pronunciation,
      'readingScore': instance.readingScore,
      'spellingScore': instance.spellingScore,
      'type': instance.type,
    };
