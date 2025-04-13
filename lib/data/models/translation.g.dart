// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TranslationAdapter extends TypeAdapter<Translation> {
  @override
  final int typeId = 2;

  @override
  Translation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Translation(
      id: fields[0] as int,
      wordPhoto: fields[1] as WordPhoto?,
      translation: fields[2] as String?,
      title: fields[3] as String?,
      type: fields[4] as String?,
      titleVoice: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Translation obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.wordPhoto)
      ..writeByte(2)
      ..write(obj.translation)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.titleVoice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      id: (json['id'] as num).toInt(),
      wordPhoto: json['wordPhoto'] == null
          ? null
          : WordPhoto.fromJson(json['wordPhoto'] as Map<String, dynamic>),
      translation: json['translation'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      titleVoice: json['titleVoice'] as String?,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wordPhoto': instance.wordPhoto,
      'translation': instance.translation,
      'title': instance.title,
      'type': instance.type,
      'titleVoice': instance.titleVoice,
    };
