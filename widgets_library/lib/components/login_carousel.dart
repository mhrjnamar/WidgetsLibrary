import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets_library/backend/providers/carousel_indicator.dart';

class LoginCarousel {
  BuildContext context;
  List<Login> loginList = [];

  LoginCarousel({
    required this.context,
    required this.loginList,
  });
  getCarousel() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.5,
              viewportFraction: 1.0,
            onPageChanged: (index, onPageChanged) {
              // CarouselIndicator().changeCurrentIndex(index);
              Provider.of<CarouselIndicator>(context, listen: false).changeCurrentIndex(index);
            },
          ),
          items: loginList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      i.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),

                    Image.asset(
                      i.image,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                    ),

                  ],
                );
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: loginList.length,
            itemBuilder: (context, index) {
              return  Center(
                child: Consumer<CarouselIndicator>(
                  builder: (context, data, child){
                    if(data.getCurrentIndex()==index){
                      return const Icon(
                        Icons.circle,
                        color: Colors.black87,
                      );
                    }else{
                      return const Icon(
                        Icons.circle,
                        color: Colors.grey,
                      );
                    }
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class Login {
  String title = "Default Title";
  String image = 'image2.jpg';

  Login({
    required this.title,
    required this.image,
  });
}
