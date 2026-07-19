class SyncService {
  SyncService._();

  static final SyncService instance = SyncService._();

  bool _syncing = false;

  Future<void> sync() async {
    _syncing = true;

    await Future.delayed(const Duration(milliseconds: 500));

    _syncing = false;
  }

  bool get isSyncing => _syncing;
}
