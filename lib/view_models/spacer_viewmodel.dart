import 'package:flutter/material.dart';

class SpacerViewModel extends ChangeNotifier {
  int flex = 1;

  void updateFlex(int newFlex) {
    flex = newFlex;
    notifyListeners();
  }
}
