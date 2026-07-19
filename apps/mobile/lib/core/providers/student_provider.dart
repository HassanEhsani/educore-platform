import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/student_repository.dart';

final studentRepositoryProvider = Provider<StudentRepository>((ref) {
  return StudentRepository();
});
