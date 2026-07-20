import '../domain/parent.dart';
import '../domain/parent_dashboard_summary.dart';

class FakeParentData {
  static const Parent parent = Parent(
    name: 'Ahmad Ahmadi',
    studentName: 'Ali Ahmadi',
    studentClass: 'Grade 10',
    attendance: 98,
    unreadMessages: 3,
  );

  static const ParentDashboardSummary summary = ParentDashboardSummary(
    childrenCount: 1,
    totalAssignments: 20,
    completedAssignments: 18,
    averageScore: 91.5,
    attendanceRate: 98,
  );
}
