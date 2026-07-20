class AdminAnalytics {
  final int totalUsers;
  final int totalBusinesses;
  final double monthlyRevenue;
  final double yearlyRevenue;
  final double userGrowth;
  final double systemUptime;
  final int activeTeachers;
  final int activeStudents;

  const AdminAnalytics({
    required this.totalUsers,
    required this.totalBusinesses,
    required this.monthlyRevenue,
    required this.yearlyRevenue,
    required this.userGrowth,
    required this.systemUptime,
    required this.activeTeachers,
    required this.activeStudents,
  });
}
