class EventInfoModel {
  final String? bannerThumbnailImageUrl;
  final String bannerImageUrl;
  final String detailImageUrl;
  final String eventPageUrl;
  final String titleText;
  final bool isOpened;
  // TODO: 이벤트 기간 추가

  EventInfoModel({
    this.bannerThumbnailImageUrl,
    required this.bannerImageUrl,
    required this.detailImageUrl,
    required this.eventPageUrl,
    required this.titleText,
    required this.isOpened,
  });
}