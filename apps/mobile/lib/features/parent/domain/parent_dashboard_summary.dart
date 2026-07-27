class ParentDashboardSummary {
  final int childrenCount;

  final int totalAssignments;
  final int completedAssignments;

  final double averageScore;

  final int attendanceRate;

  final int pendingFees;

  final int upcomingExams;

  const ParentDashboardSummary({
    required this.childrenCount,
    required this.totalAssignments,
    required this.completedAssignments,
    required this.averageScore,
    required this.attendanceRate,
    required this.pendingFees,
    required this.upcomingExams,
  });

  double get assignmentCompletionRate {
    if (totalAssignments == 0) {
      return 0;
    }

    return (completedAssignments / totalAssignments) * 100;
  }
}
