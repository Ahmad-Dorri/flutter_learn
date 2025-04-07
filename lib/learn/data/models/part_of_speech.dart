import 'package:freezed_annotation/freezed_annotation.dart';

part 'part_of_speech.g.dart';

@JsonSerializable()
final class PartOfSpeech {
  const PartOfSpeech({
    this.pluralForm,
    this.genetiveForm,
    this.femaleForm,
    this.gender,
    this.doubleForm,
    required this.isProperName,
    this.isCountable,
    required this.hasArticle,
    required this.hasEl,
    this.isCompoundNoun,
    this.partOfSpeechType,
  });

  final String? pluralForm;
  final String? genetiveForm;
  final String? femaleForm;
  final String? gender;
  final String? doubleForm;
  final bool isProperName;
  final dynamic isCountable;
  final bool hasArticle;
  final bool hasEl;
  final dynamic isCompoundNoun;
  final String? partOfSpeechType;

  factory PartOfSpeech.fromJson(Map<String, dynamic> json) =>
      _$PartOfSpeechFromJson(json);
}
