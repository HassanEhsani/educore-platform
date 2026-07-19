import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_model.dart';

class UserNotifier extends Notifier<UserModel?> {
  @override
  UserModel? build() {
    return null;
  }

  void setUser(UserModel user) {
    state = user;
  }

  void clearUser() {
    state = null;
  }
}

final currentUserProvider = NotifierProvider<UserNotifier, UserModel?>(
  UserNotifier.new,
);
