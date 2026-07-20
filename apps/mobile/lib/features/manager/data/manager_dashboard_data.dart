// lib/features/manager/data/manager_dashboard_data.dart

import '../domain/dashboard_summary.dart';

class ManagerDashboardData {
  static const DashboardSummary summary = DashboardSummary(
    students: 1250,
    teachers: 42,
    monthlyRevenue: 37700,
    attendance: 97,
  );

  static const double schoolRevenue = 25000;
  static const double ispRevenue = 8500;
  static const double laboratoryRevenue = 4200;

  static const int ispUsers = 430;
  static const int laboratoryTests = 320;
}
