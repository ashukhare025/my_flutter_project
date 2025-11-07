import 'package:flutter/widgets.dart';

class ProviderData with ChangeNotifier {
  var data = "";

  void changeData() {
    data = "Data Change Value";
    notifyListeners();
  }
}
