import '../domain/dashboard_summary.dart';

class ManagerDashboardData {
  const ManagerDashboardData._();

  static const ManagerDashboardSummary summary = ManagerDashboardSummary(
    students: 1250,

    teachers: 42,

    classes: 36,

    attendance: 97.3,

    monthlyCollection: 25000,

    pendingPayments: 84,

    todayAttendance: 1218,
  );

  static const double monthlyGrowth = 12.0;
}
