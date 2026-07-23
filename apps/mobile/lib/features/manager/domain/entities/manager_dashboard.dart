import 'dashboard_alert.dart';

class ManagerDashboard {
  final String managerName;
  final String schoolName;

  final int students;
  final int teachers;
  final int classes;

  final double attendance;

  final double monthlyRevenue;
  final double monthlyExpenses;
  final double netProfit;

  final double growth;

  final int pendingPayments;
  final int todayAttendance;

  final List<DashboardAlert> alerts;

  const ManagerDashboard({
    required this.managerName,
    required this.schoolName,
    required this.students,
    required this.teachers,
    required this.classes,
    required this.attendance,
    required this.monthlyRevenue,
    required this.monthlyExpenses,
    required this.netProfit,
    required this.growth,
    required this.pendingPayments,
    required this.todayAttendance,
    required this.alerts,
  });
}
