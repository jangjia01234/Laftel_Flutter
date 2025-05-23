import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../data/carousel_data.dart';

class HomeCarouselSlide extends StatefulWidget {
  const HomeCarouselSlide({super.key});

  @override
  State<HomeCarouselSlide> createState() => _HomeCarouselSlideState();
}

class _HomeCarouselSlideState extends State<HomeCarouselSlide> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        CarouselSlider(
          // items: imgList.map((item) {
          //   return Builder(
          //     builder: (BuildContext context) {
          //       return Container(
          //           width: MediaQuery.of(context).size.width,
          //           decoration: BoxDecoration(color: Colors.black.withOpacity(0.65)),
          //           child: Image.asset(item, fit: BoxFit.cover,)
          //       );
          //     },
          //   );
          // }).toList(),

          // TODO 2: items에서 얘네를 가져와서 Stack 형태로 잘 뿌려줘야 함 (배경-타이틀-텍스트)
          // TODO 3: 현재는 이미지들이 for loop 돌리면서 다 겹쳐버렸는데, 하나씩 나오게 해야 함
          items: [
            Stack(
              children: [
                for (var item in carouselList)
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(item.backgroundImageUrl, fit: BoxFit.cover)
                  ),
                for (var title in carouselList)
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child:
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //         width: MediaQuery.of(context).size.width,
                          //         height: MediaQuery.of(context).size.height / 8,
                          //         child: Image.asset(title, fit: BoxFit.fitHeight),
                          //         color: Colors.blue,
                          //     ),
                          //     Container(height: 10, color: Colors.red),
                          //     Text("title",style: TextStyle(color: Colors.white)),
                          //     Container(height: 10, color: Colors.red),
                          //   ],
                          // )
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 50),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Image.asset(title.titleImageUrl, fit: BoxFit.fitWidth),
                            ),
                          ),

                      )
                  ),
              ],
            )
          ],
          options: CarouselOptions(
              height: screenHeight,
              viewportFraction: 1.0,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 8),
              autoPlayAnimationDuration: Duration(milliseconds: 200),
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Positioned.fill(child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.6),
                  ),
                ),
              );
            }).toList(),
          ),
        ))
      ],
    );
  }
}