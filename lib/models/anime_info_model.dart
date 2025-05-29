class AnimeInfo {
  final String animeTitle;
  final String genre;
  final String rank;
  final String thumbnailImageUrl;
  final List<Episode> episodes;

  AnimeInfo({
      required this.animeTitle,
      required this.genre,
      required this.rank,
      required this.thumbnailImageUrl,
      required this.episodes
  });
}

class Episode {
  final String title;
  final String summary;
  final String thumbnailImageUrl;

  Episode({required this.title, required this.summary, required this.thumbnailImageUrl});
}
