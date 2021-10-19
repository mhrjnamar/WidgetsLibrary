
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:widgets_library/Screens/components_view.dart';
import 'package:widgets_library/Screens/ferinaya.dart';
import 'package:widgets_library/backend/providers/carousel_indicator.dart';
import 'package:widgets_library/bottom_bar.dart';
import 'package:widgets_library/common_buttons.dart';
import 'package:widgets_library/restaurant_card.dart';

import 'naya.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CarouselIndicator>(create: (_)=>CarouselIndicator()),
        ],
        child: const BottomBar(),
      ),
    );
  }
}





