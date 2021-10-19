import 'package:flutter/material.dart';

class DynamicSize {
  final BuildContext context;
  final double designHeight;
  final double designWidth;

  const DynamicSize(
      { required this.context,
        this.designHeight = 926,
        this.designWidth = 428,
      });

  double _getScreenWidth() => MediaQuery.of(context).size.width;
  double _getScreenHeight() => MediaQuery.of(context).size.height;

  double _sizeHeightFactor() => _getScreenHeight() / designHeight;
  double _sizeWidthFactor() => _getScreenWidth() / designWidth;

  double getHeight(double height) => (height) * _sizeHeightFactor();
  double getWidth(double width) => (width) * _sizeWidthFactor();

}
