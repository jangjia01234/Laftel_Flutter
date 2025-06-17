import 'package:flutter/material.dart';
import 'package:layout/models/like_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'routes.dart';

// TODO: 상태관리 적용 후 예제 삭제
import 'models/counter_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      // TODO: 상태바 및 하단바 추가 수정 필요
      //  - 상태바 투명 처리와 동시에 뒤에 body가 비치도록 조치
      //  - 상태바, 하단Nav바 라이트/다크모드 반영 필요 (라이트일땐 흰색)
        statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Theme.of(context).brightness,
      statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
      systemNavigationBarColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
    ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterModel()),
        ChangeNotifierProvider(create: (_) => LikeModel()),
      ],
      child: MaterialApp.router(
        // 라우터 연결
        routerConfig: router,
        // 디버그 표시 끄기
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.indigoAccent,
            scaffoldBackgroundColor: Colors.white
        ),
      ),
    );
  }
}
