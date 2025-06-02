import '../models/event_info_model.dart';

final List<EventInfoModel> eventList = [
  EventInfoModel(
      bannerThumbnailImageUrl:
          'https://thumbnail.laftel.net/event/banner/7e55e511-787b-43d5-94cb-9fc1985671fb.jpg',
      bannerImageUrl:
          'https://thumbnail.laftel.net/event/43375dc8-7d56-442f-8ada-1842c405fc44.jpg',
      detailImageUrl:
          'https://thumbnail.laftel.net/event/40/detail/8956f224-e8fd-4f21-b14b-237d05f17127.jpeg',
      // TODO: 애니 정보 화면 url로 변경
      eventPageUrl: 'https://laftel.net/events/40?modal=42789',
      titleText: '츄젠지 시청 이벤트',
      isOpened: true,
      duration: "2025.05.19 ~ 2025.06.01"),
  EventInfoModel(
      bannerImageUrl:
          'https://thumbnail.laftel.net/event/a69deb3a-11a4-43da-8131-529b427b580d.jpg',
      detailImageUrl:
          'https://thumbnail.laftel.net/event/36/detail/5ebdb464-2400-4bee-b15e-63f9bed4ee8f.jpeg',
      // TODO: 애니 정보 화면 url로 변경
      eventPageUrl: 'https://laftel.net/events/36?modal=42650',
      titleText: '지박소년 하나코 군 2기 종영 이벤트',
      isOpened: false,
      duration: "2025.04.07 ~ 2025.04.30"),
  EventInfoModel(
      bannerImageUrl:
          'https://thumbnail.laftel.net/event/5f6e06be-9dc7-40f3-ad3c-b9ccdbe581bc.png',
      detailImageUrl:
          'https://thumbnail.laftel.net/event/28/detail/4d67539d-28c1-48d4-b223-17db70b2d885.jpeg',
      // TODO: 애니 정보 화면 url로 변경
      eventPageUrl: 'https://laftel.net/events/28?modal=23232',
      titleText: '극장판 진격의 거인 완결편',
      isOpened: false,
      duration: "2025.02.28 ~ 2025.03.13"),
];
