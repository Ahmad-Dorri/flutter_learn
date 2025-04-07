import 'package:freezed_annotation/freezed_annotation.dart';
import 'word_tree_root.dart';

part 'word_tree.g.dart';

@JsonSerializable()
final class WordTree {
  const WordTree({
    required this.components,
    required this.roots,
    required this.subsets,
  });

  final List<dynamic> components;
  final List<WordTreeRoot> roots;
  final List<dynamic> subsets;

  factory WordTree.fromJson(Map<String, dynamic> json) =>
      _$WordTreeFromJson(json);
}
