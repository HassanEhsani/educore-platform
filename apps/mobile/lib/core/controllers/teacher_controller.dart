import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeacherController extends Notifier<bool> {
  @override
  bool build() => false;

  void refresh() {
    state = !state;
  }
}

final teacherControllerProvider = NotifierProvider<TeacherController, bool>(
  TeacherController.new,
);
