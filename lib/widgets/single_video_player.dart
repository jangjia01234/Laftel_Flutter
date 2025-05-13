import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

/// Stateful widget to fetch and then display video content.
class SingleVideoPlayer extends StatefulWidget {
  const SingleVideoPlayer({super.key});

  @override
  _SingleVideoPlayerState createState() => _SingleVideoPlayerState();
}

class _SingleVideoPlayerState extends State<SingleVideoPlayer> {
  late VideoPlayerController _controller;

  double progress = 0;
  Duration position = Duration.zero;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    // web url로 불러오기
    // _controller = VideoPlayerController.networkUrl(Uri.parse(
    //     'https://videos.pexels.com/video-files/31568755/13453691_2560_1440_25fps.mp4'))

    // asset file로 불러오기
    _controller =
        VideoPlayerController.asset("assets/videos/test_video_anime.mp4")
          ..initialize().then((_) {
            int max = _controller.value.duration.inSeconds;

            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {
              progress = (position.inSeconds / max * 100).isNaN
                  ? 0
                  : position.inSeconds / max * 100;
            });
          });
  }

  // 뒤로가기 / 앞으로가기
  void seekTo(int value) {
    int add = position.inSeconds + value;
    _controller.seekTo(Duration(seconds: add < 0 ? 0 : add));
  }

  // 전체화면 모드 전환
  void toggleFullScreen() async {
    if (_isFullScreen) {
      // 전체화면 종료: 세로모드 전환, 시스템 UI 다시 보여줌
      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]);
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } else {
      // 전체화면 시작: 가로모드 전환, 시스템 UI 숨김
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }

    setState(() {
      _isFullScreen = !_isFullScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Stack(
        children: [
          // 영상
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),

          // 뒤로가기, 재생/정지, 앞으로가기
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 24,
                icon: Icon(Icons.replay_5_rounded, color: Colors.white),
                onPressed: () {
                  seekTo(-5);
                },
              ),
              IconButton(
                iconSize: 60,
                icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    color: Colors.white),
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
              ),
              IconButton(
                iconSize: 24,
                icon: Icon(Icons.forward_5_rounded, color: Colors.white),
                onPressed: () {
                  seekTo(5);
                },
              ),
            ],
          ),
        ],
      )),

      // 하단바
      VideoProgressIndicator(_controller, allowScrubbing: true),

      Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // 현재 시간
            Text(_controller.value.position.toString().substring(2, 7)),

            Row(
              children: [
                // 전체 시간
                Text(_controller.value.duration.toString().substring(2, 7)),
                // 전체화면 전환
                GestureDetector(
                    onTap: () {
                      toggleFullScreen();
                    },
                    child: Icon(_isFullScreen
                        ? Icons.fullscreen_exit_rounded
                        : Icons.fullscreen_rounded)),
              ],
            ),
          ])),
    ]);
  }

  @override
  void dispose() {
    // 상태 종료 시 컨트롤러 해제
    _controller.dispose();

    // 전체화면 설정 복원 (세로 모드로)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    super.dispose();
  }
}
