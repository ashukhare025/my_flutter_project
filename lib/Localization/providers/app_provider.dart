import 'package:flutter/material.dart.';

class AppProvider with ChangeNotifier {
  Locale locale;

  AppProvider(this.locale);

  changeLanguage(Locale value) {
    locale = value;
    notifyListeners();
  }
}
