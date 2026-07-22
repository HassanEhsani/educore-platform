/// Merchant Dashboard summary model.
///
/// Temporary location:
/// features/admin/domain/
///
/// Future migration:
/// features/merchant/domain/merchant_dashboard_summary.dart
class AdminDashboardSummary {
  // Merchant overview
  final int totalBusinesses;
  final int totalUsers;

  // Education business metrics
  final int totalStudents;
  final int totalTeachers;
  final int totalParents;

  // ISP business metrics
  final int ispUsers;

  // Laboratory business metrics
  final int laboratoryTests;

  // Financial metrics
  final double monthlyRevenue;
  final double yearlyRevenue;

  // Growth compared with previous period
  final double userGrowth;

  // Revenue breakdown
  final double schoolRevenue;
  final double ispRevenue;
  final double laboratoryRevenue;

  const AdminDashboardSummary({
    required this.totalBusinesses,
    required this.totalUsers,

    required this.totalStudents,
    required this.totalTeachers,
    required this.totalParents,

    required this.ispUsers,
    required this.laboratoryTests,

    required this.monthlyRevenue,
    required this.yearlyRevenue,

    required this.userGrowth,

    required this.schoolRevenue,
    required this.ispRevenue,
    required this.laboratoryRevenue,
  });

  double get totalBusinessRevenue =>
      schoolRevenue + ispRevenue + laboratoryRevenue;
}
