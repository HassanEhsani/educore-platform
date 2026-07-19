class DatabaseService {
  DatabaseService._();

  static final DatabaseService instance = DatabaseService._();

  bool _initialized = false;

  Future<void> init() async {
    _initialized = true;
  }

  bool get isInitialized {
    return _initialized;
  }
}
