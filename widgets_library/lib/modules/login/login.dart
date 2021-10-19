import 'package:flutter/material.dart';
import 'package:widgets_library/components/atom/login_title_bar.dart';
import 'package:widgets_library/components/login_carousel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LoginTitleBar(),
            LoginCarousel(
                context: context,
                loginList: [
                  Login(
                      title: "Book your favourite\nrestaurants or hotels",
                      image: "assets/png/login1.png"
                  ),
                  Login(
                      title: "Quick view Menu of  wide range\nof restaurants",
                      image: "assets/png/login2.png"
                  ),
                  Login(
                      title: "Find your Favourite Hotel in different city ",
                      image: "assets/jpg/image2.jpg"
                  )
                ]).getCarousel(),
          ],
        ),
      ),
    );
  }
}
