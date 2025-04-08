import 'package:freezed_annotation/freezed_annotation.dart';
import 'card_model.dart';

part 'subcategory.g.dart';

@JsonSerializable()
final class Subcategory {
  const Subcategory({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.position,
    required this.cards,
    required this.wordsCount,
    required this.estimatedLearningTime,
    required this.categoryId,
    required this.photo,
    required this.photoThumbnail,
    required this.hashedFields,
  });

  final int id;
  final String title;
  final String originalTitle;
  final int position;
  final List<CardModel> cards;
  final int wordsCount;
  final int estimatedLearningTime;
  final int categoryId;
  final String photo;
  final String photoThumbnail;
  final Map<String, dynamic> hashedFields;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
