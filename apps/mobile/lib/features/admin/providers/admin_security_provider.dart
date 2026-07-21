import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminSecurityState {
  final bool twoFactorEnabled;
  final String twoFactorMethod;
  final List<String> backupCodes;

  const AdminSecurityState({
    this.twoFactorEnabled = false,
    this.twoFactorMethod = 'Authenticator App',
    this.backupCodes = const [
      'EDU-4829',
      'CORE-7391',
      'SAFE-6248',
      'AUTH-9135',
    ],
  });

  AdminSecurityState copyWith({
    bool? twoFactorEnabled,
    String? twoFactorMethod,
    List<String>? backupCodes,
  }) {
    return AdminSecurityState(
      twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,

      twoFactorMethod: twoFactorMethod ?? this.twoFactorMethod,

      backupCodes: backupCodes ?? this.backupCodes,
    );
  }
}

class AdminSecurityNotifier extends Notifier<AdminSecurityState> {
  @override
  AdminSecurityState build() {
    return const AdminSecurityState();
  }

  void toggleTwoFactor(bool value) {
    state = state.copyWith(twoFactorEnabled: value);
  }

  void changeTwoFactorMethod(String method) {
    state = state.copyWith(twoFactorMethod: method);
  }

  void regenerateBackupCodes() {
    state = state.copyWith(
      backupCodes: const ['NEW-4821', 'NEW-7395', 'NEW-6240', 'NEW-9138'],
    );
  }
}

final adminSecurityProvider =
    NotifierProvider<AdminSecurityNotifier, AdminSecurityState>(
      AdminSecurityNotifier.new,
    );
