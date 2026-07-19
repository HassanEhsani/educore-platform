class AppInfoService {
  AppInfoService._();

  static final AppInfoService instance = AppInfoService._();

  static const String appName = 'EduCore';

  static const String version = '1.0.0';

  String get fullInfo {
    return '$appName $version';
  }
}
