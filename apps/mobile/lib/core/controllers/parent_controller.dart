import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParentController extends Notifier<bool> {
  @override
  bool build() => false;

  void refresh() {
    state = !state;
  }
}

final parentControllerProvider = NotifierProvider<ParentController, bool>(
  ParentController.new,
);
