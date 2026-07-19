import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void login() {
    state = true;
  }

  void logout() {
    state = false;
  }
}

final sessionProvider = NotifierProvider<SessionNotifier, bool>(
  SessionNotifier.new,
);
