import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppReadyNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setReady() {
    state = true;
  }

  void reset() {
    state = false;
  }
}

final appReadyProvider = NotifierProvider<AppReadyNotifier, bool>(
  AppReadyNotifier.new,
);
