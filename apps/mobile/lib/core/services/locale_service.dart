import 'package:shared_preferences/shared_preferences.dart';

class LocaleService {
  LocaleService._();

  static final LocaleService instance = LocaleService._();

  static const String _key = 'app_locale';

  Future<void> saveLocale(String locale) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_key, locale);
  }

  Future<String?> getLocale() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_key);
  }
}
