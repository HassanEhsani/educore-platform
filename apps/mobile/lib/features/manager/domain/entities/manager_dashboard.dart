import 'dashboard_alert.dart';
import 'dashboard_notification.dart';
import 'recent_activity.dart';

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

  final int pendingPayments;

  final int todayAttendance;

  final double growth;

  final List<DashboardAlert> alerts;

  final List<DashboardNotification> notifications;

  final List<RecentActivity> activities;

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
    required this.pendingPayments,
    required this.todayAttendance,
    required this.growth,
    required this.alerts,
    required this.notifications,
    required this.activities,
  });
}
