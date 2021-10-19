import 'package:flutter/material.dart';

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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.teal,
            shape: BoxShape.rectangle
          ),
          height: 52,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.add_alert),
              Icon(Icons.favorite),
              Icon(Icons.add_alert),
              Icon(Icons.add_alert),

            ],
          ),
        ),

      ),
    );
  }
}
