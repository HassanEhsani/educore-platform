import 'dart:async';

class DebounceService {
  DebounceService._();

  static final DebounceService instance = DebounceService._();

  Timer? _timer;

  void run(Duration duration, void Function() callback) {
    _timer?.cancel();

    _timer = Timer(duration, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}
