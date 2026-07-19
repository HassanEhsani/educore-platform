import 'auth_service.dart';
import 'database_service.dart';
import 'logger_service.dart';
import 'storage_service.dart';

class AppInitializer {
  AppInitializer._();

  static Future<void> initialize() async {
    await StorageService.instance.init();

    await DatabaseService.instance.init();

    await AuthService.instance.init();

    LoggerService.instance.info('App initialized successfully');
  }
}
