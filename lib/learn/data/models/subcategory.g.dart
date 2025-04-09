// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      originalTitle: json['originalTitle'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      wordsCount: (json['wordsCount'] as num).toInt(),
      photo: json['photo'] as String,
      photoThumbnail: json['photoThumbnail'] as String,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'cards': instance.cards,
      'wordsCount': instance.wordsCount,
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
    };
