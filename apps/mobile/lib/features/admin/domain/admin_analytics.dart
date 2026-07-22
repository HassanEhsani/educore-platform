/// Deprecated.
///
/// Temporary model kept for backward compatibility.
///
/// Merchant Dashboard must use
/// AdminDashboardSummary instead.
///
/// This class will be removed after
/// System Admin domain separation.
class AdminAnalytics {
  /// Total users across all merchant businesses
  final int totalUsers;

  /// Number of businesses owned by merchant
  final int totalBusinesses;

  /// Education business metrics
  final int activeStudents;
  final int activeTeachers;

  /// Financial metrics
  final double monthlyRevenue;
  final double yearlyRevenue;

  /// Growth compared with previous period
  final double userGrowth;

  /// Temporary compatibility field.
  /// Belongs to System Admin domain.
  /// Do not use in Merchant Dashboard.
  final double systemUptime;

  const AdminAnalytics({
    required this.totalUsers,
    required this.totalBusinesses,
    required this.activeStudents,
    required this.activeTeachers,
    required this.monthlyRevenue,
    required this.yearlyRevenue,
    required this.userGrowth,
    required this.systemUptime,
  });

  String get formattedMonthlyRevenue => _formatCurrency(monthlyRevenue);

  String get formattedYearlyRevenue => _formatCurrency(yearlyRevenue);

  String get formattedGrowth => '${userGrowth.toStringAsFixed(1)}%';

  String get formattedSystemUptime => '${systemUptime.toStringAsFixed(1)}%';

  static String _formatCurrency(double value) {
    if (value >= 1000000) {
      return '\$${(value / 1000000).toStringAsFixed(1)}M';
    }

    if (value >= 1000) {
      return '\$${(value / 1000).toStringAsFixed(1)}K';
    }

    return '\$${value.toStringAsFixed(0)}';
  }
}
