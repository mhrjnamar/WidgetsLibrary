import 'package:flutter/cupertino.dart';

class CarouselIndicator extends ChangeNotifier{
  int _currentIndex = 0;
  int getCurrentIndex() => _currentIndex;
  changeCurrentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}