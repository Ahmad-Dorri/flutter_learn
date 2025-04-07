// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      originalTitle: json['originalTitle'] as String,
      position: (json['position'] as num).toInt(),
      cards: (json['cards'] as List<dynamic>)
          .map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      wordsCount: (json['wordsCount'] as num).toInt(),
      estimatedLearningTime: (json['estimatedLearningTime'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      photo: json['photo'] as String,
      photoThumbnail: json['photoThumbnail'] as String,
      hashedFields: json['hashedFields'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'position': instance.position,
      'cards': instance.cards,
      'wordsCount': instance.wordsCount,
      'estimatedLearningTime': instance.estimatedLearningTime,
      'categoryId': instance.categoryId,
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
      'hashedFields': instance.hashedFields,
    };
