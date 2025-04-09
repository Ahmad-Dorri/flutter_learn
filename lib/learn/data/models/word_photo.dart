import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_photo.g.dart';

@JsonSerializable()
final class WordPhoto {
  const WordPhoto({
    required this.photo,
    required this.photoThumbnail,
  });

  final String photo;
  final String photoThumbnail;

  factory WordPhoto.fromJson(Map<String, Object?> json) =>
      _$WordPhotoFromJson(json);
}
