import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileController extends Notifier<bool> {
  @override
  bool build() => false;

  void refreshProfile() {
    state = !state;
  }
}

final profileControllerProvider = NotifierProvider<ProfileController, bool>(
  ProfileController.new,
);
