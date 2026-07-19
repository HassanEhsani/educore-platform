import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStateNotifier extends Notifier<bool> {
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

final authStateProvider = NotifierProvider<AuthStateNotifier, bool>(
  AuthStateNotifier.new,
);
