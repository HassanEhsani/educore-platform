class TeacherDashboardSummary {
  final int totalStudents;
  final int todayClasses;
  final int pendingReports;
  final int attendanceRate;

  const TeacherDashboardSummary({
    required this.totalStudents,
    required this.todayClasses,
    required this.pendingReports,
    required this.attendanceRate,
  });
}
