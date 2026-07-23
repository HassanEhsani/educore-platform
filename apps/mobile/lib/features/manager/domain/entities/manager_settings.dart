enum AppLanguage { english, persian, pashto }

class ManagerSettings {
  final String managerId;

  final String managerName;

  final String email;

  final String phoneNumber;

  final String schoolName;

  final String schoolAddress;

  final String schoolLogo;

  final bool biometricEnabled;

  final bool twoFactorEnabled;

  final bool notificationsEnabled;

  final bool darkModeEnabled;

  final AppLanguage language;

  final String appVersion;

  const ManagerSettings({
    required this.managerId,
    required this.managerName,
    required this.email,
    required this.phoneNumber,
    required this.schoolName,
    required this.schoolAddress,
    required this.schoolLogo,
    required this.biometricEnabled,
    required this.twoFactorEnabled,
    required this.notificationsEnabled,
    required this.darkModeEnabled,
    required this.language,
    required this.appVersion,
  });
}
