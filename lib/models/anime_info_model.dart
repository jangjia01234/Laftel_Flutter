class AnimeInfo {
  final String animeTitle;
  final String thumbnailImageUrl;
  final List<Episode> episodes;

  AnimeInfo({
      required this.animeTitle,
      required this.thumbnailImageUrl,
      required this.episodes
  });
}

class Episode {
  final String title;
  final String summary;

  Episode({required this.title, required this.summary});
}
