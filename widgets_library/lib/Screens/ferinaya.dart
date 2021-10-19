import 'package:flutter/material.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';

class Shadows extends StatelessWidget {
  const Shadows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.deepOrange,
        width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.2),
            blurRadius: 0.5,
            spreadRadius: 0.1,
            offset: const Offset(
              -1,
              1,
            ),
          ),
          BoxShadow(
            color: Colors.black54.withOpacity(0.2),
            blurRadius: 0.5,
            spreadRadius: 0.5,
            offset: const Offset(
              0,
              3,
            )
          )
        ]
      ),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 1.0,
              spreadRadius: -1,
              offset: Offset(
                -1,
                1,
              )
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.fromLTRB(8.0, 9.0, 7.0, 7.0),
                  width: DynamicSize(context: context).getWidth(140),
                  height : DynamicSize(context: context).getHeight(103),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/jpg/cuisine.jpg',
                        fit: BoxFit.cover
                    ),
                  )
              ),

              SizedBox(
                // color: Colors.green[100],
                width: DynamicSize(context: context).getWidth(125),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('Chicken Station', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    const Text('Janakpur Dham', style: TextStyle(fontSize: 12)),
                    const Text('Open at 9AM - 12 PM', style: TextStyle(fontSize: 12)),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.add_location_alt_rounded,
                          size: 12,
                        ),
                        Text('1.5 km', style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    const Text('1.5km', style: TextStyle(fontSize: 12)),
                    const Text('2k People loves this.', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Container(
                // color: Colors.teal,
                width: DynamicSize(context: context).getWidth(115),
                // height : DynamicSize(context: context).getHeight(29),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:const <Widget>[
                        Icon(
                          Icons.star,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('4.5', style: TextStyle(fontSize: 14,),),
                        SizedBox(
                          width: 13,
                        )
                      ],
                    ),
                    Container(
                      // width: double.infinity,
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(15),
                          // color: Colors.orange
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Icon(Icons.favorite),
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepOrange),
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(15),

                              ),
                              height : DynamicSize(context: context).getHeight(29),
                              width : DynamicSize(context: context).getWidth(62),
                              child: const Center(child: Text('Book',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepOrange
                                ),)),
                            ),
                            const SizedBox(
                              width: 2,
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
