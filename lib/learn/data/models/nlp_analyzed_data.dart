import 'package:freezed_annotation/freezed_annotation.dart';
import 'letter.dart';
import 'word_tree.dart';

part 'nlp_analyzed_data.g.dart';

@JsonSerializable()
final class NlpAnalyzedData {
  const NlpAnalyzedData({
    this.pluralForm,
    this.isProperName,
    this.isCompoundNoun,
    required this.letters,
    required this.partOfSpeech,
    required this.pronunciationIPA,
    required this.pronunciationSimplified,
    required this.readingDifficultyScore,
    required this.spellingDifficultyScore,
    required this.version,
    required this.word,
    required this.wordTree,
  });

  final dynamic pluralForm;
  final dynamic isProperName;
  final dynamic isCompoundNoun;
  final List<Letter> letters;
  final String partOfSpeech;
  final String pronunciationIPA;
  final String pronunciationSimplified;
  final String readingDifficultyScore;
  final String spellingDifficultyScore;
  final int version;
  final String word;
  final WordTree wordTree;

  factory NlpAnalyzedData.fromJson(Map<String, dynamic> json) =>
      _$NlpAnalyzedDataFromJson(json);
}
