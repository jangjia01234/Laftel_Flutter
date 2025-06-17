import 'package:json_annotation/json_annotation.dart';

part 'anime_info.g.dart';

@JsonSerializable()
class AnimeInfo {
  final int id;
  final String name;
  final String url;
  final String image;
  final String content;
  final bool ended;
  final List<String> awards;
  final String content_rating;
  final bool adultonly;
  final bool viewable;
  final List<String> genres;
  final List<String> tags;
  final String air_year_quarter;
  final String air_day;
  final double avg_rating;
  final int? series_id;
  final String production;

  AnimeInfo({
    required this.id,
    required this.name,
    required this.url,
    required this.image,
    required this.content,
    required this.ended,
    required this.awards,
    required this.content_rating,
    required this.adultonly,
    required this.viewable,
    required this.genres,
    required this.tags,
    required this.air_year_quarter,
    required this.air_day,
    required this.avg_rating,
    required this.series_id,
    required this.production,
  });

  factory AnimeInfo.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeInfoToJson(this);
}
