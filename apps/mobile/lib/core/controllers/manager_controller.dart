import 'package:flutter_riverpod/flutter_riverpod.dart';

class ManagerController extends Notifier<bool> {
  @override
  bool build() => false;

  void refresh() {
    state = !state;
  }
}

final managerControllerProvider = NotifierProvider<ManagerController, bool>(
  ManagerController.new,
);
