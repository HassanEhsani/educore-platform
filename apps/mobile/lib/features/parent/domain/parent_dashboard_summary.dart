class ParentDashboardSummary {
  final int childrenCount;
  final int totalAssignments;
  final int completedAssignments;
  final double averageScore;
  final int attendanceRate;

  const ParentDashboardSummary({
    required this.childrenCount,
    required this.totalAssignments,
    required this.completedAssignments,
    required this.averageScore,
    required this.attendanceRate,
  });
}
