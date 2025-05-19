import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarouselSlide extends StatefulWidget {
  const HomeCarouselSlide({super.key});

  @override
  State<HomeCarouselSlide> createState() => _HomeCarouselSlideState();
}

class _HomeCarouselSlideState extends State<HomeCarouselSlide> {
  final List<String> imgList = [
    'img1',
    'img2',
    'img3',
    'img4',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        CarouselSlider(
          items: imgList.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                    child: Text(
                      'text $item',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
          options: CarouselOptions(
              height: screenHeight,
              viewportFraction: 1.0,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 3000),
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
            children: imgList.asMap().entries.map((entry) {
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

// class HomeCarouselSlide extends StatelessWidget {
//   const HomeCarouselSlide({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     final List<String> imgList = [
//       'https://via.placeholder.com/600x400',
//       'https://via.placeholder.com/600x400',
//       'https://via.placeholder.com/600x400',
//     ];
//
//     int _current = 0;
//     final CarouselController _controller = CarouselController();
//
//     return Column(
//       children: [
//         CarouselSlider(
//           items: [1, 2, 3, 4, 5].map((i) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: EdgeInsets.symmetric(horizontal: 5.0),
//                     decoration: BoxDecoration(color: Colors.amber),
//                     child: Text(
//                       'text $i',
//                       style: TextStyle(fontSize: 16.0),
//                     ));
//               },
//             );
//           }).toList(),
//           options: CarouselOptions(
//             height: screenHeight,
//             viewportFraction: 1.0,
//             initialPage: 0,
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 4),
//             autoPlayAnimationDuration: Duration(milliseconds: 3000),
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _current = index;
//               })
//             }
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: ,
//         )
//       ],
//     );
//   }
// }
