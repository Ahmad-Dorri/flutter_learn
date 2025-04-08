// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardModel _$CardModelFromJson(Map<String, dynamic> json) => CardModel(
      id: (json['id'] as num).toInt(),
      mainTranslation:
          Translation.fromJson(json['mainTranslation'] as Map<String, dynamic>),
      type: json['type'] as String,
      description: json['description'] as String?,
      position: (json['position'] as num).toInt(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String,
      phonetic: json['phonetic'] as String,
    );

Map<String, dynamic> _$CardModelToJson(CardModel instance) => <String, dynamic>{
      'id': instance.id,
      'mainTranslation': instance.mainTranslation,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'phonetic': instance.phonetic,
    };
