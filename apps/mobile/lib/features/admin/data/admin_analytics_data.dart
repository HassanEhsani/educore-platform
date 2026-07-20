// lib/features/admin/data/admin_analytics_data.dart

import '../domain/admin_analytics.dart';

class AdminAnalyticsData {
  static const AdminAnalytics analytics = AdminAnalytics(
    totalUsers: 2450,
    totalBusinesses: 3,

    monthlyRevenue: 45000,
    yearlyRevenue: 540000,

    userGrowth: 12.5,
    systemUptime: 99.9,

    activeTeachers: 120,
    activeStudents: 2450,
  );
}
