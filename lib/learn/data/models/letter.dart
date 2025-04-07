import 'package:freezed_annotation/freezed_annotation.dart';

part 'letter.g.dart';

@JsonSerializable()
final class Letter {
  const Letter({
    required this.letter,
    required this.pronunciation,
    required this.readingScore,
    required this.spellingScore,
    required this.type,
  });

  final String letter;
  final String pronunciation;
  final int readingScore;
  final int spellingScore;
  final String type;

  factory Letter.fromJson(Map<String, dynamic> json) => _$LetterFromJson(json);
}
