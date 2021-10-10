import 'package:flutter/material.dart';
import 'package:widgets_library/components/search_bar.dart';

class ComponentView extends StatelessWidget {
  const ComponentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [

          SearchBar(title: "Search Restaurants", width: 50.0),
        ],
      ),
    );
  }
}
