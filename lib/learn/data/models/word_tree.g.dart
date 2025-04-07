// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordTree _$WordTreeFromJson(Map<String, dynamic> json) => WordTree(
      components: json['components'] as List<dynamic>,
      roots: (json['roots'] as List<dynamic>)
          .map((e) => WordTreeRoot.fromJson(e as Map<String, dynamic>))
          .toList(),
      subsets: json['subsets'] as List<dynamic>,
    );

Map<String, dynamic> _$WordTreeToJson(WordTree instance) => <String, dynamic>{
      'components': instance.components,
      'roots': instance.roots,
      'subsets': instance.subsets,
    };
