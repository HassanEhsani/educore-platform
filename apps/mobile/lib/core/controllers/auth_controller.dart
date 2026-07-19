import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends Notifier<bool> {
  @override
  bool build() => false;

  void login() {
    state = true;
  }

  void logout() {
    state = false;
  }
}

final authControllerProvider = NotifierProvider<AuthController, bool>(
  AuthController.new,
);
