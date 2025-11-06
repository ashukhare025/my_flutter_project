import 'package:flutter/material.dart.';

class SettingProvider with ChangeNotifier {
  ThemeMode mode = ThemeMode.system;

  void switchTheme(ThemeMode value) {
    mode = value;
    notifyListeners();

  }
}
