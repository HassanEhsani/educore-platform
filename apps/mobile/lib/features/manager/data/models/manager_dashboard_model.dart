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
    required super.growth,
    required super.pendingPayments,
    required super.todayAttendance,
    required super.alerts,
  });

  factory ManagerDashboardModel.fromEntity(ManagerDashboard dashboard) {
    return ManagerDashboardModel(
      managerName: dashboard.managerName,
      schoolName: dashboard.schoolName,
      students: dashboard.students,
      teachers: dashboard.teachers,
      classes: dashboard.classes,
      attendance: dashboard.attendance,
      monthlyRevenue: dashboard.monthlyRevenue,
      monthlyExpenses: dashboard.monthlyExpenses,
      netProfit: dashboard.netProfit,
      growth: dashboard.growth,
      pendingPayments: dashboard.pendingPayments,
      todayAttendance: dashboard.todayAttendance,
      alerts: dashboard.alerts,
    );
  }
}
