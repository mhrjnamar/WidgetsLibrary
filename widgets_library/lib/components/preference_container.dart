import 'package:flutter/material.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';

class PreferenceContainer extends StatelessWidget {
 List<Parameters> _paramsList = [];

   PreferenceContainer({Key? key,required List<Parameters> list}) : super(key: key){
    _paramsList = list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DynamicSize(context: context).getHeight(80),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:_paramsList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: DynamicSize(context: context).getWidth(19)),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Container(

              height: DynamicSize(context: context).getHeight(70),
              width: DynamicSize(context: context).getWidth(70),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black87.withOpacity(0.3),
                    Colors.transparent,
                    Colors.transparent
                  ],
                  stops: const [
                    0,0.15,1
                  ]
                ),
              ),
              child: Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black87.withOpacity(0.3),
                        Colors.transparent.withOpacity(0),
                        Colors.transparent
                      ],
                      stops: const [
                        0,0.1,1
                      ]
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.black87.withOpacity(0.3),
                          Colors.transparent,
                          Colors.transparent
                        ],
                        stops: const [
                          0,0.1,1
                        ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(_paramsList[index].icons,
                      size: DynamicSize(context: context).getHeight(35),
                      color: Colors.deepOrange,),
                      Text(_paramsList[index].title,
                      style: TextStyle(
                        fontSize: DynamicSize(context: context).getHeight(15)
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

class Parameters{
String title='title';
IconData icons=Icons.home;
Parameters({required this.title, required this.icons});
}