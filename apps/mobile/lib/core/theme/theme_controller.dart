import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  void setLightMode() {
    setTheme(ThemeMode.light);
  }

  void setDarkMode() {
    setTheme(ThemeMode.dark);
  }

  void setSystemMode() {
    setTheme(ThemeMode.system);
  }
}

final themeController = ThemeController();
