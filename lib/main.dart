import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

// TODO: 상태관리 적용 후 예제 삭제
import 'models/counter_model.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: MaterialApp(
        // 라우터 연결
        routes: routes,
        // 디버그 표시 끄기
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.indigoAccent,
            scaffoldBackgroundColor: Colors.white
        ),
      ),
    );
  }
}
