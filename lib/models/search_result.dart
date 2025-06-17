import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  final int id;
  final String name;
  final String url;
  final String image;
  final bool adultonly;
  final List<String> genres;

  SearchResult({
    required this.id,
    required this.name,
    required this.url,
    required this.image,
    required this.adultonly,
    required this.genres,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
