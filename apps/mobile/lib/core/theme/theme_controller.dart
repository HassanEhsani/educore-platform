import 'package:flutter/material.dart';

import '../services/theme_service.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void loadTheme() {
    _themeMode = ThemeService.instance.getThemeMode();

    notifyListeners();
  }

  Future<void> setTheme(ThemeMode mode) async {
    _themeMode = mode;

    await ThemeService.instance.saveThemeMode(mode);

    notifyListeners();
  }

  Future<void> setLightMode() async {
    await setTheme(ThemeMode.light);
  }

  Future<void> setDarkMode() async {
    await setTheme(ThemeMode.dark);
  }

  Future<void> setSystemMode() async {
    await setTheme(ThemeMode.system);
  }
}

final themeController = ThemeController();
