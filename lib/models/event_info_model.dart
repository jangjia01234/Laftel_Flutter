class EventInfoModel {
  final String? bannerThumbnailImageUrl;
  final String bannerImageUrl;
  final String detailImageUrl;
  final String eventPageUrl;
  final String titleText;
  final bool isOpened;
  final String? duration;

  EventInfoModel({
    this.bannerThumbnailImageUrl,
    required this.bannerImageUrl,
    required this.detailImageUrl,
    required this.eventPageUrl,
    required this.titleText,
    required this.isOpened,
    this.duration,
  });
}