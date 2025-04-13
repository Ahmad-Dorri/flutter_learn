// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_photo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordPhotoAdapter extends TypeAdapter<WordPhoto> {
  @override
  final int typeId = 1;

  @override
  WordPhoto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordPhoto(
      photo: fields[0] as String?,
      photoThumbnail: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WordPhoto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.photo)
      ..writeByte(1)
      ..write(obj.photoThumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordPhotoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordPhoto _$WordPhotoFromJson(Map<String, dynamic> json) => WordPhoto(
      photo: json['photo'] as String?,
      photoThumbnail: json['photoThumbnail'] as String?,
    );

Map<String, dynamic> _$WordPhotoToJson(WordPhoto instance) => <String, dynamic>{
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
    };
