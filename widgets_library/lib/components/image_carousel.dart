import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  List<String> _imgList = [];
  bool _autoPlay = true;
  ImageCarousel(List<String> imgList, {Key? key, bool? autoPlay = true})
      : super(key: key) {
    _imgList = imgList;
    _autoPlay = autoPlay!;
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: _autoPlay),
      items: _imgList
          .map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    );
  }
}
