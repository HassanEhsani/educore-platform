class BackupService {
  BackupService._();

  static final BackupService instance = BackupService._();

  Future<void> createBackup() async {
    await Future.delayed(const Duration(milliseconds: 300));
  }

  Future<void> restoreBackup() async {
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
