import 'package:flutter/material.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';

class GenericButton extends StatelessWidget{
  final Widget? value;
  final Color? btnColor;
  final Widget route;
  final double? height;
  final double? width;
  final double borderRadius;

  // ignore: use_key_in_widget_constructors
  const GenericButton({this.value, this.btnColor, required this.route, this.height, this.width, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
          child: Center(child: value),
        ),
      ),
      onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>route)),
    );
  }


}