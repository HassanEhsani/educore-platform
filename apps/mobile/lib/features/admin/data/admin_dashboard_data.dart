// lib/features/admin/data/admin_dashboard_data.dart

import '../domain/admin_dashboard_summary.dart';

class AdminDashboardData {
  const AdminDashboardData._();

  static const AdminDashboardSummary summary = AdminDashboardSummary(
    // Education metrics
    totalStudents: 1250,
    totalTeachers: 42,
    totalParents: 900,

    // Business metrics
    ispUsers: 430,
    laboratoryTests: 320,

    // Financial overview
    monthlyRevenue: 37700,
    yearlyRevenue: 452400,

    // Revenue breakdown
    schoolRevenue: 28000,
    ispRevenue: 6500,
    laboratoryRevenue: 3200,
  );
}
