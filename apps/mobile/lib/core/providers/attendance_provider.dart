import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/attendance_repository.dart';

final attendanceRepositoryProvider = Provider<AttendanceRepository>((ref) {
  return AttendanceRepository();
});
