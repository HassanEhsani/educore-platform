import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentController extends Notifier<bool> {
  @override
  bool build() => false;

  void refresh() {
    state = !state;
  }
}

final studentControllerProvider = NotifierProvider<StudentController, bool>(
  StudentController.new,
);
