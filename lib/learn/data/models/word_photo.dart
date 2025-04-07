import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_photo.g.dart';

@JsonSerializable()
final class WordPhoto {
  const WordPhoto({
    required this.originalTitle,
    required this.updatedAt,
    required this.description,
    required this.urlId,
    required this.webTitle,
    required this.photo,
    required this.photoThumbnail,
  });

  final String originalTitle;
  final DateTime updatedAt;
  final String description;
  final String urlId;
  final String webTitle;
  final String photo;
  final String photoThumbnail;

  factory WordPhoto.fromJson(Map<String, Object?> json) =>
      _$WordPhotoFromJson(json);
}
