import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectionStateNotifier extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  void connected() {
    state = true;
  }

  void disconnected() {
    state = false;
  }
}

final connectionStateProvider = NotifierProvider<ConnectionStateNotifier, bool>(
  ConnectionStateNotifier.new,
);
