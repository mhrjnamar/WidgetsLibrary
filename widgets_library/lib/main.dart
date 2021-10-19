import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:widgets_library/Screens/components_menu.dart';
import 'package:widgets_library/backend/providers/carousel_indicator.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider<CarouselIndicator>(
                create: (_) => CarouselIndicator()),
          ],
          child:const MyApp()
      )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ComponentsMenu(),
    );
  }
}
