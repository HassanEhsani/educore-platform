import '../../domain/entities/manager_dashboard.dart';

class ManagerDashboardModel extends ManagerDashboard {
  const ManagerDashboardModel({
    required super.managerName,
    required super.schoolName,
    required super.students,
    required super.teachers,
    required super.classes,
    required super.attendance,
    required super.monthlyRevenue,
    required super.monthlyExpenses,
    required super.netProfit,
    required super.pendingPayments,
    required super.todayAttendance,
    required super.alerts,
    required super.notifications,
    required super.activities,
    required super.growth,
  });

  factory ManagerDashboardModel.fromJson(Map<String, dynamic> json) {
    return ManagerDashboardModel(
      managerName: json['managerName'] as String,
      schoolName: json['schoolName'] as String,

      students: json['students'] as int,
      teachers: json['teachers'] as int,
      classes: json['classes'] as int,

      attendance: (json['attendance'] as num).toDouble(),

      monthlyRevenue: (json['monthlyRevenue'] as num).toDouble(),

      monthlyExpenses: (json['monthlyExpenses'] as num).toDouble(),

      netProfit: (json['netProfit'] as num).toDouble(),

      pendingPayments: json['pendingPayments'] as int,

      todayAttendance: json['todayAttendance'] as int,

      growth: (json['growth'] as num).toDouble(),

      alerts: [],

      notifications: [],

      activities: [],
    );
  }
}
