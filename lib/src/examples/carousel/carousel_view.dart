import 'package:flutter/material.dart';

import 'components/carousel.dart';

class CarouselView extends StatelessWidget {
  CarouselView({Key? key}) : super(key: key);
  final _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  final List<String> images = [
    "https://wallpaperaccess.com/full/3627295.png",
    "https://wallpaperaccess.com/full/4286382.jpg",
    "https://wallpaperaccess.com/full/4286383.jpg",
    "https://wallpaperaccess.com/full/4286384.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Center(
        child: Column(
          children: [
            Carousel(
              images: images,
              pageController: _pageController,
            ),
          ],
        ),
      ),
    );
  }
}
