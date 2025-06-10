import '../models/anime_info_model.dart';

// TODO: 크롤링 완료 -> 데이터 구조 변경
final List<AnimeInfo> animeList = [
  AnimeInfo(
      animeTitle: '호리미야',
      genre: '드라마·로맨스',
      rank: "3",
      thumbnailImageUrl:
          'https://thumbnail.laftel.net/items/home/3837a308-4746-470a-8fd0-091f43f55992.jpg?c=0%2C0%2C1024%2C576&webp=1&w=380',
      episodes: [
        Episode(
          title: '1화 아주 사소한 계기로',
          summary:
              '미인에다 성적도 우수해서 인기가 많은 여학생 호리 쿄코와 음침하고 외모도 평범한 미야무라 이즈미. 전혀 접점이 없을 것 같았던 두 사람은 우연한 계기로 남에게 보여줄 수 없는 모습을 공유하는 사이가 되는데.',
          thumbnailImageUrl: 'https://thumbnail.laftel.net/assets/2021/01/44538/v15/Thumbnail.0000057.jpg',
        ),
        Episode(
          title: '2화 얼굴은 하나만이 아니다',
          summary:
              '미야무라와 함께 지내는 나날이 새로운 일상이 된 호리. 하지만 아직 서로에 대해 모르는 것이 많았다. 호리에게 차이고 상심 중인 이시카와와 절친인 유키 그리고 미야무라가 합류하면서 호리의 매일은 빠르게 변화한다. 그러던 중 학생회장 센고쿠 카케루가 이끄는 학생회의 멤버들이 찾아와 호리에게 부탁이 있다며 일을 떠넘기는데.',
          thumbnailImageUrl: 'https://thumbnail.laftel.net/assets/2021/01/44538/v15/Thumbnail.0000057.jpg',
        ),
        Episode(
          title: '3화 그러니까 괜찮아',
          summary:
              '3학년이 된 호리는 친구들과 같은 반이 되었다. 떠들썩한 친구들 속에 자신이 있어도 되는 걸까라고 자신의 과거를 떠올리며 고민하는 미야무라. 복잡한 마음을 품은 채로 지내던 중 호리와 미야무라의 관계도 점점 변화해 간다. 그리고 드디어 둘은 서로를 의식하게 되었는데......',
          thumbnailImageUrl: 'https://thumbnail.laftel.net/assets/2021/01/44656/v15/Thumbnail.0000057.jpg',
        ),
        Episode(
          title: '4화 누구나 누군가를 좋아한다',
          summary:
              '트러블이 있었던 학생회 멤버들과도 함께 지내는 시간이 늘어난 호리 일행은 오늘도 학생회실에서 시간을 보낸다. 미야무라와 호리의 관계를 의심하는 레미와 몰래 이시카와에 대한 호감을 가지게 된 사쿠라까지 마음은 모두 제각각. 그러던 어느 날 미야무라의 과거를 알고 있는 중학교 동창이자 친한 친구인 신도 코이치가 나타나는데.',
          thumbnailImageUrl: 'https://thumbnail.laftel.net/assets/2021/01/44773/v15/Thumbnail.0000057.jpg',
        ),
      ]),
];
