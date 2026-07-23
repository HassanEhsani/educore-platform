import '../entities/manager_settings.dart';
import '../repositories/manager_settings_repository.dart';

class GetManagerSettings {
  final ManagerSettingsRepository repository;

  GetManagerSettings({required this.repository});

  Future<ManagerSettings> call() async {
    return await repository.getSettings();
  }
}
