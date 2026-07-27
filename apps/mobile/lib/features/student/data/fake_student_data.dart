import '../domain/student.dart';
import '../domain/student_dashboard_summary.dart';

class FakeStudentData {
  static const Student student = Student(
    id: 'ST001',

    fullName: 'Ali Ahmadi',

    studentNumber: '2026001',

    grade: 10,

    avatarUrl: '',

    parentName: 'Ahmad Ahmadi',

    parentPhone: '+93 700 000000',
  );

  static const StudentDashboardSummary summary = StudentDashboardSummary(
    completedCourses: 12,

    pendingAssignments: 3,

    averageScore: 89.5,

    attendanceRate: 97,
  );
}
