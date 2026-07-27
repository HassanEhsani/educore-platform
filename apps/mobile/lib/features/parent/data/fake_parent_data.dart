import '../domain/parent.dart';
import '../domain/parent_dashboard_summary.dart';

class FakeParentData {
  static const Parent parent = Parent(
    name: 'Ahmad Ahmadi',

    email: 'ahmad.ahmadi@example.com',

    studentName: 'Ali Ahmadi',

    studentClass: 'Grade 10 - Class A',

    studentNumber: 'ST-2026-001',

    avatarUrl: '',

    attendance: 98,

    unreadMessages: 3,

    relationship: 'Father',
  );

  static const ParentDashboardSummary summary = ParentDashboardSummary(
    childrenCount: 1,

    totalAssignments: 20,

    completedAssignments: 18,

    averageScore: 91.5,

    attendanceRate: 98,

    pendingFees: 300,

    upcomingExams: 2,
  );
}
