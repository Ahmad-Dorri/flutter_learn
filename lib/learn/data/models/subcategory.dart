import 'package:freezed_annotation/freezed_annotation.dart';
import 'card_model.dart';

part 'subcategory.g.dart';

@JsonSerializable()
final class Subcategory {
  const Subcategory({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.cards,
    required this.wordsCount,
    required this.photo,
    required this.photoThumbnail,
  });

  final int id;
  final String title;
  final String originalTitle;
  final List<CardModel> cards;
  final int wordsCount;
  final String photo;
  final String photoThumbnail;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
