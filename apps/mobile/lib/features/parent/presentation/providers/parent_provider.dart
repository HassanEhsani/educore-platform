import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/fake_parent_data.dart';
import '../../domain/child_attendance.dart';
import '../../domain/child_fee.dart';
import '../../domain/child_grade.dart';
import '../../domain/parent.dart';
import '../../domain/parent_dashboard_summary.dart';
import '../../domain/parent_notification.dart';

final parentProvider = Provider<Parent>((ref) {
  return FakeParentData.parent;
});

final parentDashboardSummaryProvider = Provider<ParentDashboardSummary>((
  ref,
) {
  return FakeParentData.summary;
});

final parentGradesProvider = Provider<List<ChildGrade>>((ref) {
  return FakeParentData.grades;
});

final parentAttendanceProvider = Provider<List<ChildAttendance>>((ref) {
  return FakeParentData.attendance;
});

final parentFeesProvider = Provider<List<ChildFee>>((ref) {
  return FakeParentData.fees;
});

final parentNotificationsProvider = Provider<List<ParentNotification>>((ref) {
  return FakeParentData.notifications;
});
