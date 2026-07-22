import '../domain/manager_activity.dart';

class ManagerActivityData {
  const ManagerActivityData._();

  static const List<ManagerActivity> activities = [
    ManagerActivity(
      title: '20 new students registered',
      subtitle: 'Today • 10:30 AM',
      type: ManagerActivityType.student,
    ),

    ManagerActivity(
      title: 'Monthly payment received',
      subtitle: 'Today • 09:15 AM',
      type: ManagerActivityType.payment,
    ),

    ManagerActivity(
      title: 'Teacher attendance completed',
      subtitle: 'Yesterday',
      type: ManagerActivityType.attendance,
    ),

    ManagerActivity(
      title: 'Monthly report generated',
      subtitle: '2 days ago',
      type: ManagerActivityType.report,
    ),
  ];
}
