import 'package:flutter/material.dart';

import '../services/theme_service.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  Future<void> loadTheme() async {
    _themeMode = ThemeService.instance.getThemeMode();

    notifyListeners();
  }

  Future<void> setTheme(ThemeMode mode) async {
    await ThemeService.instance.saveThemeMode(mode);

    _themeMode = mode;

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
