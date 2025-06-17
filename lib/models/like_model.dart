import 'package:flutter/foundation.dart';

class LikeModel extends ChangeNotifier {
  final Set<int> _likedAnimeIds = {};

  bool isLiked(int id) => _likedAnimeIds.contains(id);

  void toggleLike(int id) {
    if (_likedAnimeIds.contains(id)) {
      _likedAnimeIds.remove(id); // 이미 좋아요 눌렀으면 취소
    } else {
      _likedAnimeIds.add(id); // 좋아요 추가
    }
    notifyListeners();
  }
}