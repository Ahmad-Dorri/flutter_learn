// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardModelAdapter extends TypeAdapter<CardModel> {
  @override
  final int typeId = 0;

  @override
  CardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CardModel(
      id: fields[0] as int,
      mainTranslation: fields[1] as Translation?,
      type: fields[2] as String?,
      description: fields[3] as String?,
      position: fields[4] as int?,
      updatedAt: fields[5] as DateTime?,
      title: fields[6] as String?,
      phonetic: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CardModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mainTranslation)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.position)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.phonetic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardModel _$CardModelFromJson(Map<String, dynamic> json) => CardModel(
      id: (json['id'] as num).toInt(),
      mainTranslation: json['mainTranslation'] == null
          ? null
          : Translation.fromJson(
              json['mainTranslation'] as Map<String, dynamic>),
      type: json['type'] as String?,
      description: json['description'] as String?,
      position: (json['position'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String?,
      phonetic: json['phonetic'] as String?,
    );

Map<String, dynamic> _$CardModelToJson(CardModel instance) => <String, dynamic>{
      'id': instance.id,
      'mainTranslation': instance.mainTranslation,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'phonetic': instance.phonetic,
    };
