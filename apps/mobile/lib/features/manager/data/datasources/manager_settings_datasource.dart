import '../../domain/entities/manager_settings.dart';
import '../models/manager_settings_model.dart';

class ManagerSettingsDataSource {
  Future<ManagerSettingsModel> getSettings() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return const ManagerSettingsModel(
      managerId: 'manager_001',

      managerName: 'Hassan Ehsani',

      email: 'manager@educore.com',

      phoneNumber: '+93700000000',

      schoolName: 'EduCore International School',

      schoolAddress: 'Kabul, Afghanistan',

      schoolLogo: '',

      biometricEnabled: false,

      twoFactorEnabled: true,

      notificationsEnabled: true,

      darkModeEnabled: false,

      language: AppLanguage.persian,

      appVersion: '1.0.0',
    );
  }
}
