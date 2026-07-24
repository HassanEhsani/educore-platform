import '../theme/theme_controller.dart';

import 'database_service.dart';
import 'logger_service.dart';
import 'storage_service.dart';

class AppInitializer {
  AppInitializer();

  Future<void> initialize() async {
    await StorageService.instance.init();
    themeController.loadTheme();

    await DatabaseService.instance.init();

    LoggerService.instance.info('App initialized successfully');
  }
}
