import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_tree_root.g.dart';

@JsonSerializable()
final class WordTreeRoot {
  const WordTreeRoot({
    required this.partOfSpeech,
    required this.prefix,
    required this.suffix,
    required this.translationIds,
    required this.word,
  });

  final String partOfSpeech;
  final String prefix;
  final String suffix;
  final List<dynamic> translationIds;
  final String word;

  factory WordTreeRoot.fromJson(Map<String, Object?> json) =>
      _$WordTreeRootFromJson(json);
}
