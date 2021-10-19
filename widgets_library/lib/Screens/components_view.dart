import 'package:flutter/material.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';
import 'package:widgets_library/components/image_carousel.dart';
import 'package:widgets_library/components/login_carousel.dart';
import 'package:widgets_library/components/preference_container.dart';
import 'package:widgets_library/components/search_bar.dart';

class ComponentView extends StatelessWidget {
  const ComponentView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Scaffold(
      body: Container(
        color: const Color(0xFFE5E5E5),
        height: DynamicSize(context: context).getHeight(960),
        width: DynamicSize(context: context).getWidth(428),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchBar(title: "Search Restaurants", width: 50.0),
            ImageCarousel(imgList),
            PreferenceContainer(list: [
              Parameters(title: 'Family',icons: Icons.family_restroom),
              Parameters(title: 'Home',icons: Icons.home_filled),
              Parameters(title: 'Bar',icons: Icons.bar_chart),
            ],
            ),
            // LoginCarousel(
            //   context: context,
            //     loginList: [
            //   Login(
            //       title: "Book your favourite\nrestaurants or hotels",
            //       image: "assets/png/login1.png"
            //   ),
            //   Login(
            //       title: "Quick view Menu of  wide range\nof restaurants",
            //       image: "assets/png/login2.png"
            //   ),
            //   Login(
            //       title: "Find your Favourite Hotel in different city ",
            //       image: "assets/jpg/image2.jpg"
            //   )
            // ]).getCarousel(),
          ],
        ),
      ),
    );
  }
}