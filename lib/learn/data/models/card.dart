import 'package:freezed_annotation/freezed_annotation.dart';
import 'translation.dart';

part 'card.g.dart';

@JsonSerializable()
class Card {
  const Card({
    required this.id,
    required this.mainTranslation,
    required this.type,
    this.description,
    required this.position,
    required this.updatedAt,
    required this.title,
    required this.phonetic,
  });

  final int id;
  final Translation mainTranslation;
  final String type;
  final String? description;
  final int position;
  final DateTime updatedAt;
  final String title;
  final String phonetic;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
