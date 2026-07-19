import 'auth_service.dart';
import 'database_service.dart';
import 'notification_service.dart';

class AppInitializer {
  AppInitializer._();

  static final AppInitializer instance = AppInitializer._();

  Future<void> initialize() async {
    await DatabaseService.instance.initialize();

    await NotificationService.instance.initialize();

    AuthService.instance;
  }
}
