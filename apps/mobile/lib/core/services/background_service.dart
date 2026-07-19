class BackgroundService {
  BackgroundService._();

  static final BackgroundService instance = BackgroundService._();

  bool _running = false;

  Future<void> start() async {
    _running = true;
  }

  Future<void> stop() async {
    _running = false;
  }

  bool get isRunning => _running;
}
