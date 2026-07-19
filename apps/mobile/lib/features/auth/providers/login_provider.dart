import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/login_request.dart';
import '../repositories/login_repository.dart';
import 'login_repository_provider.dart';

class LoginNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> login(String username, String password) async {
    state = const AsyncLoading();

    final repo = ref.read(loginRepositoryProvider);

    state = await AsyncValue.guard(() async {
      await repo.login(LoginRequest(username: username, password: password));
    });
  }
}

final loginProvider = AsyncNotifierProvider<LoginNotifier, void>(
  LoginNotifier.new,
);
