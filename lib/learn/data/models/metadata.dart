import 'package:freezed_annotation/freezed_annotation.dart';
import 'nlp_analyzed_data.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  const Metadata({
    required this.nlpAnalyzedData,
  });

  final NlpAnalyzedData nlpAnalyzedData;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
