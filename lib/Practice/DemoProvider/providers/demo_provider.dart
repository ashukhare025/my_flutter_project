import 'package:flutter/material.dart';

class DemoProvider with ChangeNotifier {
  String data = 'Ram';

  void demoData(value) {
    data = value;
    notifyListeners();
  }
}
