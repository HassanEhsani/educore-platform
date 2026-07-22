import '../domain/admin_analytics.dart';

class AdminAnalyticsData {
  const AdminAnalyticsData._();

  static const AdminAnalytics analytics = AdminAnalytics(
    totalUsers: 2450,
    totalBusinesses: 3,
    activeStudents: 2450,
    activeTeachers: 120,
    monthlyRevenue: 45000,
    yearlyRevenue: 540000,
    userGrowth: 12.5,
    systemUptime: 99.9,
  );
}
