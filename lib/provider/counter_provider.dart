import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void Inc() {
    _count++;
    notifyListeners();
  }
}