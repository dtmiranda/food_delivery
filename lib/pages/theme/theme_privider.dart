import 'package:flutter/material.dart';
import 'package:food_delivery/pages/theme/dark_mode.dart';
import 'package:food_delivery/pages/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData == isDarkMode 
      ? themeData = lightMode 
      : themeData = darkMode;
  }
}