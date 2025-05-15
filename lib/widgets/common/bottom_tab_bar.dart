import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/search_screen.dart';
import '../../screens/bookmark_screen.dart';
import '../../screens/mypage_screen.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    BookmarkScreen(),
    MypageScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar:
        // 상단 border
        Container(
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Colors.black.withOpacity(0.2),
                      width: 0.5)
              ),
            ),
            // 하단 nav bar
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_box_outlined),
                  label: '태그검색',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border_outlined),
                    label: '보관함'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_rounded),
                    label: 'MY'
                )
              ],
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.black,
              showUnselectedLabels: true,
              selectedItemColor: Colors.indigoAccent,
              backgroundColor: Colors.white,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
            )
        )
    );
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을 떄
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
