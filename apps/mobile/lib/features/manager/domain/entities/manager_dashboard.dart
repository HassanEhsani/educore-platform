class ManagerDashboard {
  final String managerName;
  final String schoolName;

  final int students;
  final int teachers;

  final double attendance;

  final double monthlyRevenue;
  final double growth;

  const ManagerDashboard({
    required this.managerName,
    required this.schoolName,
    required this.students,
    required this.teachers,
    required this.attendance,
    required this.monthlyRevenue,
    required this.growth,
  });
}
