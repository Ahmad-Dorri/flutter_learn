// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_of_speech.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartOfSpeech _$PartOfSpeechFromJson(Map<String, dynamic> json) => PartOfSpeech(
      pluralForm: json['pluralForm'] as String?,
      genetiveForm: json['genetiveForm'] as String?,
      femaleForm: json['femaleForm'] as String?,
      gender: json['gender'] as String?,
      doubleForm: json['doubleForm'] as String?,
      isProperName: json['isProperName'] as bool,
      isCountable: json['isCountable'],
      hasArticle: json['hasArticle'] as bool,
      hasEl: json['hasEl'] as bool,
      isCompoundNoun: json['isCompoundNoun'],
      partOfSpeechType: json['partOfSpeechType'] as String?,
    );

Map<String, dynamic> _$PartOfSpeechToJson(PartOfSpeech instance) =>
    <String, dynamic>{
      'pluralForm': instance.pluralForm,
      'genetiveForm': instance.genetiveForm,
      'femaleForm': instance.femaleForm,
      'gender': instance.gender,
      'doubleForm': instance.doubleForm,
      'isProperName': instance.isProperName,
      'isCountable': instance.isCountable,
      'hasArticle': instance.hasArticle,
      'hasEl': instance.hasEl,
      'isCompoundNoun': instance.isCompoundNoun,
      'partOfSpeechType': instance.partOfSpeechType,
    };
