import '../../domain/entities/manager_settings.dart';
import '../../domain/repositories/manager_settings_repository.dart';
import '../datasources/manager_settings_datasource.dart';

class ManagerSettingsRepositoryImpl implements ManagerSettingsRepository {
  final ManagerSettingsDataSource dataSource;

  ManagerSettingsRepositoryImpl({required this.dataSource});

  @override
  Future<ManagerSettings> getSettings() async {
    return await dataSource.getSettings();
  }
}
