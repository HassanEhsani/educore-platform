class DashboardSummary {
  final int students;

  final int teachers;

  final int classes;

  final double attendance;

  final double monthlyCollection;

  final int pendingPayments;

  final int todayAttendance;

  const DashboardSummary({
    required this.students,
    required this.teachers,
    required this.classes,
    required this.attendance,
    required this.monthlyCollection,
    required this.pendingPayments,
    required this.todayAttendance,
  });
}
