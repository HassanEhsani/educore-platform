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
    required super.growth,
    required super.alerts,
    required super.notifications,
    required super.activities,
  });

  factory ManagerDashboardModel.fromJson(Map<String, dynamic> json) {
    return ManagerDashboardModel(
      managerName: json['managerName'] as String? ?? '',

      schoolName: json['schoolName'] as String? ?? '',

      students: json['students'] as int? ?? 0,

      teachers: json['teachers'] as int? ?? 0,

      classes: json['classes'] as int? ?? 0,

      attendance: (json['attendance'] as num? ?? 0).toDouble(),

      monthlyRevenue: (json['monthlyRevenue'] as num? ?? 0).toDouble(),

      monthlyExpenses: (json['monthlyExpenses'] as num? ?? 0).toDouble(),

      netProfit: (json['netProfit'] as num? ?? 0).toDouble(),

      pendingPayments: json['pendingPayments'] as int? ?? 0,

      todayAttendance: json['todayAttendance'] as int? ?? 0,

      growth: (json['growth'] as num? ?? 0).toDouble(),

      alerts: const [],

      notifications: const [],

      activities: const [],
    );
  }
}
