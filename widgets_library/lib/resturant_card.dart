import 'package:flutter/material.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({Key? key}) : super(key: key);

  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Card'),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.green[100]
          ),
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                  width: MediaQuery.of(context).size.width/3,
                  child:  const Icon(Icons.title)),
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Title'),
                    Text('Location'),
                    Text('Opening Time'),
                    Text('kilometers'),
                    Text('2k People loves this'),

                  ],
                ),
              ),
              Container(
                color: Colors.teal,
                width: MediaQuery.of(context).size.width/3,
                child: ElevatedButton(

                  child: const Text('Book'),
                    onPressed: () {}
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
