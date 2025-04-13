import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:langeek_flutter/configs/constants.dart';

part 'word_photo.g.dart';

@JsonSerializable()
@HiveType(typeId: kStorageWordPhoto)
final class WordPhoto {
  const WordPhoto({
    this.photo,
    this.photoThumbnail,
  });

  @HiveField(0)
  final String? photo;

  @HiveField(1)
  final String? photoThumbnail;

  factory WordPhoto.fromJson(Map<String, Object?> json) =>
      _$WordPhotoFromJson(json);
}
