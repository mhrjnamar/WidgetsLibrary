import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {
  String title = 'Search';
  double width = 100.0;

  // ignore: use_key_in_widget_constructors
  SearchBar({required this.title, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: 38,
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.deepOrange, width: 1),
          boxShadow:  [
            BoxShadow(
              color: Colors.black54.withOpacity(0.2),
              blurRadius: 0.5, // soften the shadow
              spreadRadius: 0.1, //extend the shadow
              offset: const Offset(
                -1, // Move to right 10  horizontally
                1, // Move to bottom 10 Vertically
              ),
            ),
            BoxShadow(
              color: Colors.black54.withOpacity(0.2),
              blurRadius: 0.5, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: const Offset(
                0, // Move to right 10  horizontally
                3, // Move to bottom 10 Vertically
              ),
            )
          ]),
      child: Container(
        height: 30,
          decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1.0, // soften the shadow
                  spreadRadius: -1, //extend the shadow
                  offset: Offset(
                    -1, // Move to right 10  horizontally
                    1, // Move to bottom 10 Vertically
                  ),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.deepOrange,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
