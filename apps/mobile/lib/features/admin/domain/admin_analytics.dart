class AdminAnalytics {
  final int totalUsers;
  final int totalBusinesses;

  final int activeStudents;
  final int activeTeachers;

  final double monthlyRevenue;
  final double yearlyRevenue;

  final double userGrowth;
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

  String get formattedUptime => '${systemUptime.toStringAsFixed(1)}%';

  static String _formatCurrency(double value) {
    if (value >= 1000000) {
      return '\$${(value / 1000000).toStringAsFixed(1)}M';
    }

    if (value >= 1000) {
      return '\$${(value / 1000).toStringAsFixed(0)}K';
    }

    return '\$${value.toStringAsFixed(0)}';
  }
}
