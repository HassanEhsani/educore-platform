import '../entities/manager_settings.dart';

abstract class ManagerSettingsRepository {
  Future<ManagerSettings> getSettings();
}
