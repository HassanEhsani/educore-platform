import '../../domain/entities/manager_settings.dart';

class ManagerSettingsModel extends ManagerSettings {
  const ManagerSettingsModel({
    required super.managerId,
    required super.managerName,
    required super.email,
    required super.phoneNumber,
    required super.schoolName,
    required super.schoolAddress,
    required super.schoolLogo,
    required super.biometricEnabled,
    required super.twoFactorEnabled,
    required super.notificationsEnabled,
    required super.darkModeEnabled,
    required super.language,
    required super.appVersion,
  });

  factory ManagerSettingsModel.fromJson(Map<String, dynamic> json) {
    return ManagerSettingsModel(
      managerId: json['managerId'] ?? '',

      managerName: json['managerName'] ?? '',

      email: json['email'] ?? '',

      phoneNumber: json['phoneNumber'] ?? '',

      schoolName: json['schoolName'] ?? '',

      schoolAddress: json['schoolAddress'] ?? '',

      schoolLogo: json['schoolLogo'] ?? '',

      biometricEnabled: json['biometricEnabled'] ?? false,

      twoFactorEnabled: json['twoFactorEnabled'] ?? false,

      notificationsEnabled: json['notificationsEnabled'] ?? true,

      darkModeEnabled: json['darkModeEnabled'] ?? false,

      language: AppLanguage.values.firstWhere(
        (item) => item.name == json['language'],
        orElse: () => AppLanguage.english,
      ),

      appVersion: json['appVersion'] ?? '1.0.0',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'managerId': managerId,

      'managerName': managerName,

      'email': email,

      'phoneNumber': phoneNumber,

      'schoolName': schoolName,

      'schoolAddress': schoolAddress,

      'schoolLogo': schoolLogo,

      'biometricEnabled': biometricEnabled,

      'twoFactorEnabled': twoFactorEnabled,

      'notificationsEnabled': notificationsEnabled,

      'darkModeEnabled': darkModeEnabled,

      'language': language.name,

      'appVersion': appVersion,
    };
  }
}
