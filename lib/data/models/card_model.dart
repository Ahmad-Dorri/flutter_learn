import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:langeek_flutter/configs/constants.dart';
import 'translation.dart';

part 'card_model.g.dart';

@JsonSerializable()
@HiveType(typeId: kStorageCardModel)
class CardModel {
  const CardModel({
    required this.id,
    this.mainTranslation,
    this.type,
    this.description,
    this.position,
    this.updatedAt,
    this.title,
    this.phonetic,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final Translation? mainTranslation;

  @HiveField(2)
  final String? type;

  @HiveField(3)
  final String? description;

  @HiveField(4)
  final int? position;

  @HiveField(5)
  final DateTime? updatedAt;

  @HiveField(6)
  final String? title;

  @HiveField(7)
  final String? phonetic;

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);
}
