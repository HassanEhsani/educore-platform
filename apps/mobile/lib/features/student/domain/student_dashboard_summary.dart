class StudentDashboardSummary {
  final int completedCourses;
  final int pendingAssignments;
  final double averageScore;
  final int attendanceRate;

  const StudentDashboardSummary({
    required this.completedCourses,
    required this.pendingAssignments,
    required this.averageScore,
    required this.attendanceRate,
  });
}
