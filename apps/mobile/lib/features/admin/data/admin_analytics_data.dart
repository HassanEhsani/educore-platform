// lib/features/admin/data/admin_analytics_data.dart

import '../domain/admin_analytics.dart';

class AdminAnalyticsData {
  const AdminAnalyticsData._();

  /// Temporary merchant dashboard demo data.
  ///
  /// This represents the owner dashboard:
  /// - School
  /// - ISP
  /// - Laboratory
  ///
  /// Later this data will come from backend APIs.

  static const AdminAnalytics analytics = AdminAnalytics(
    // Business summary
    totalBusinesses: 3,

    // Education business
    activeStudents: 1250,
    activeTeachers: 42,

    // Customers/users across all businesses
    totalUsers: 1680,

    // Financial performance
    monthlyRevenue: 37700,
    yearlyRevenue: 452400,

    // Compared with previous month
    userGrowth: 8.5,

    // Temporary compatibility field.
    // Reserved for future system administration module.
    systemUptime: 99.9,
  );
}
