import '../domain/admin_activity.dart';

class AdminActivityData {
  const AdminActivityData._();

  static const List<AdminActivity> activities = [
    AdminActivity(
      title: 'New school registered',
      description: 'EduCore branch added successfully',
      type: ActivityType.business,
      time: 'Today',
    ),

    AdminActivity(
      title: 'Monthly report generated',
      description: 'Financial report is ready',
      type: ActivityType.report,
      time: 'Yesterday',
    ),

    AdminActivity(
      title: 'New teacher added',
      description: 'A new teacher joined the organization',
      type: ActivityType.user,
      time: '2 days ago',
    ),

    AdminActivity(
      title: 'Security settings updated',
      description: 'Two-factor authentication settings changed',
      type: ActivityType.security,
      time: '3 days ago',
    ),
  ];
}
