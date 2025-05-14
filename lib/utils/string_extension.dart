extension StringExtension on String {
  // 한글 어절 단위 줄바꿈
  String insertZwj() {
    return replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D');
  }
}