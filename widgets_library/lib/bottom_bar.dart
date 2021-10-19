import 'package:flutter/material.dart';

import 'backend/dynamic_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Bar'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: DynamicSize(context: context).getWidth(376),
            height: DynamicSize(context: context).getHeight(52),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              shape: BoxShape.rectangle
            ),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(Icons.add_alert, size: 30),
                Icon(Icons.favorite, size: 30),
                Icon(Icons.add_alert, size: 30),
                Icon(Icons.person_pin, size: 30),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
