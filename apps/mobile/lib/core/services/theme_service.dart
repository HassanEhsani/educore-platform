import 'package:flutter/material.dart';

import 'storage_service.dart';

class ThemeService {
  ThemeService._();

  static final ThemeService instance = ThemeService._();

  static const String _key = 'theme_mode';

  Future<void> saveThemeMode(ThemeMode mode) async {
    await StorageService.instance.setString(_key, mode.name);
  }

  ThemeMode getThemeMode() {
    final value = StorageService.instance.getString(_key);

    switch (value) {
      case 'dark':
        return ThemeMode.dark;

      case 'light':
        return ThemeMode.light;

      default:
        return ThemeMode.system;
    }
  }
}
