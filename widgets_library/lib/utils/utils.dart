import 'dart:math';

import 'package:flutter/cupertino.dart';

double percentageOfScreenWidth(BuildContext context, double percent) {
  return MediaQuery.of(context).size.width * (percent / 100);
}

double percentageOfScreenHeight(BuildContext context, double percent) {
  return MediaQuery.of(context).size.height * (percent / 100);
}

int generateRandomCode(int minValue, int maxValue) {
  return Random().nextInt((maxValue - minValue).abs() + 1) +
      min(minValue, maxValue);
}

Color generateRandomColor() {
  return Color(List<int>.generate(
      36, (i) => generateRandomCode(0xFFFFFFFF, 0xFF000000))[0]);
}
