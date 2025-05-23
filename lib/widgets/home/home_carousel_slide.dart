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
          items: carouselList.map((item) {
            return Stack(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(item.backgroundImageUrl,
                        fit: BoxFit.cover)),
                Positioned.fill(
                    child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 55),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Image.asset(item.titleImageUrl,
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 35),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(item.titleText,
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            );
          }).toList(),
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
        Positioned.fill(
            child: Align(
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
