// lib/features/admin/data/admin_activity_data.dart

import '../domain/admin_activity.dart';

/// Temporary merchant dashboard activity data.
///
/// Current location:
/// features/admin/data/
///
/// Future migration:
/// features/merchant/data/merchant_activity_data.dart
///
/// This will be replaced later with
/// repository/API based activity data.

class AdminActivityData {
  const AdminActivityData._();

  static const List<AdminActivity> activities = [
    AdminActivity(
      title: 'School payment received',
      description: 'Monthly tuition payment completed successfully',
      type: ActivityType.payment,
      time: 'Today',
    ),

    AdminActivity(
      title: 'Financial report generated',
      description: 'Monthly business revenue report is ready',
      type: ActivityType.report,
      time: 'Yesterday',
    ),

    AdminActivity(
      title: 'New student registered',
      description: 'A new student joined the school',
      type: ActivityType.education,
      time: '2 days ago',
    ),

    AdminActivity(
      title: 'ISP customer added',
      description: 'A new internet service customer was created',
      type: ActivityType.business,
      time: '3 days ago',
    ),
  ];
}
